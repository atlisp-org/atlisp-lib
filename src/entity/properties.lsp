;;; properties.lsp --- entity:properties
;;
;; 功能:
;;   返回 CAD 图形对象的属性名-属性值点对表。
;;   先提取通用属性（ObjectName, Handle, Layer, Color 等），
;;   再根据 ObjectName 自动匹配实体类型提取专有属性。
;;
;; 依赖:
;;   (load "to-list.lsp")    提供 entity:to-list
;;   (load "try-get.lsp")   提供 entity:try-get
;;   Visual LISP 扩展函数 (vlax-*)
;;
;; 参数:
;;   ent - 图元名 (ENAME) 或 VLA 对象
;;
;; 返回值:
;;   点对表，形如 ((ObjectName . "AcDbLine") (Layer . "0") ...)。
;;   若 ent 无效则出错（与 entget 行为一致）。
;;
;; 示例:
;;   ;; 交互选择实体
;;   (entity:properties (car (entsel "\n选择对象: ")))
;;
;;   ;; 通过句柄获取
;;   (entity:properties (handent "1C"))
;;
;;   ;; 直接传入 VLA 对象
;;   (entity:properties (vla-item (vla-get-Blocks *DOC*) "块名"))
;;
;;   ;; 返回示例（圆）:
;;   ;; ((ObjectName . "AcDbCircle")
;;   ;;  (Handle . "1C")
;;   ;;  (Layer . "0")
;;   ;;  (Color . 256)
;;   ;;  (Linetype . "ByLayer")
;;   ;;  (Center . (10.0 10.0 0.0))
;;   ;;  (Radius . 5.0)
;;   ;;  (Diameter . 10.0)
;;   ;;  (Circumference . 31.4159)
;;   ;;  (Area . 78.5398))

(defun entity:properties (ent / obj object-name result)
  (setq obj (if (= (type ent) 'VLA-OBJECT)
              ent
              (vlax-ename->vla-object ent)))
  (setq result (entity:try-get obj *common-props*))
  (setq object-name (cdr (assoc 'ObjectName result)))
  (if object-name
    (setq result (append result
                        (entity:try-get obj
                          (cdr (assoc (read object-name) *entity-props*))))))
  result)
