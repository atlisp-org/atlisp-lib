(defun block:get-obj-by-name (blk-name)
  "通过块名获取块的AX对象"
  "vla-object"
  (car (vl-remove-if-not
	'(lambda(x)
	   (= (vla-get-name x) blk-name))
	(block:list-blk-objs))))
