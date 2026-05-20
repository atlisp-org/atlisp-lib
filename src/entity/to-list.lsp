;;; to-list.lsp --- entity:to-list
;;
;; 功能:
;;   将 VARIANT 或 SAFEARRAY 类型递归转换为普通 AutoLISP 列表。
;;
;; 参数:
;;   val - 任意 AutoLISP 值（VARIANT / SAFEARRAY / 基本类型）
;;
;; 返回值:
;;   转换后的普通列表，基本类型原样返回。
;;
;; 示例:
;;   (entity:to-list (vlax-make-variant 123))          => 123
;;   (entity:to-list (vlax-3d-point 1 2 3))             => (1.0 2.0 3.0)
;;   (entity:to-list "Hello")                            => "Hello"

(defun entity:to-list (val)
  (cond
    ((= (type val) 'VARIANT)
     (entity:to-list (vlax-variant-value val)))
    ((= (type val) 'SAFEARRAY)
     (vlax-safearray->list val))
    (T val)))
