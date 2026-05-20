;;; try-get.lsp --- entity:try-get
;;
;; 功能:
;;   安全获取 VLA 对象的一组属性值。
;;   依赖 entity:to-list 转换 VARIANT/SAFEARRAY。
;;
;; 依赖:
;;   (load "to-list.lsp")
;;
;; 参数:
;;   obj   - VLA 对象
;;   names - 属性名符号列表，如 '(StartPoint EndPoint)
;;
;; 返回值:
;;   点对表 ((属性名 . 值) ...)，不存在的属性自动跳过。
;;
;; 示例:
;;   (entity:try-get (vlax-ename->vla-object (car (entsel)))
;;                   '(Layer Color))
;;   => ((Layer . "0") (Color . 256))

(defun entity:try-get (obj names / result val)
  (foreach name names
    (if (not (vl-catch-all-error-p
               (setq val (vl-catch-all-apply
                           (function vlax-get-property)
                           (list obj name)))))
      (setq result (cons (cons name (entity:to-list val)) result))))
  (reverse result))
