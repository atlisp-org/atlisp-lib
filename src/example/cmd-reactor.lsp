(defun example:cmd-reactor()
  "命令反应器示例：当执行LINE PLINE ARC时，临时调整对象捕捉功能，完成后恢复原设置"
  ""
  ;; 反转最近点捕捉命令，可加 ' 进行透明执行
  (defun c:nea ()
    (setvar "osmode"  (boole 6 (getvar  "osmode") 512))
    (if (= 0 (logand (getvar  "osmode") 512))
	(prompt " 关闭最近点捕捉")
	(prompt " 开启最近点捕捉"))
    (princ)
    )
  ;; 当执行命令 line pline arc 时，保存当前osmode变量
  (defun react-start-cmd(param1 param2)
    (if (member (car param2) '("LINE" "PLINE"  "ARC"))
	(push-var "OSMODE"))
    (princ)
    )
  ;; 当结束命令 line pline arc 时，保存恢复当前osmode变量
  (defun react-end-cmd(param1 param2)
    (if (member (car param2) '("LINE" "PLINE" "ARC"))
	(pop-var))
    (princ)
    )
  ;; 定义命令反应器
  (defun @::enable-tempvar-reactor ()
    (if (null at-tempvar-cmd-start)
	(setq at-tempvar-cmd-start (vlr-command-reactor nil '((:vlr-commandWillStart . react-start-cmd))))
	(vlr-add at-tempvar-cmd-start)
	)
    (if (null at-tempvar-cmd-ended)
	(setq at-tempvar-cmd-ended (vlr-command-reactor nil '((:vlr-commandEnded . react-end-cmd))))
	(vlr-add at-tempvar-cmd-ended)
	)
    (if (null at-tempvar-cmd-cancelled)
	(setq at-tempvar-cmd-cancelled (vlr-command-reactor nil '((:vlr-commandCancelled . react-end-cmd))))
	(vlr-add at-tempvar-cmd-cancelled)
	)
    (if (null at-tempvar-cmd-failed)
	(setq at-tempvar-cmd-failed (vlr-command-reactor nil '((:vlr-commandFailed . react-end-cmd))))
	(vlr-add at-tempvar-cmd-failed)
	)
    )

  (defun @::disable-tempvar-reactor ()
    (foreach x (list at-tempvar-cmd-start
		     at-tempvar-cmd-ended
		     at-tempvar-cmd-cancelled
		     at-tempvar-cmd-failed)
	     (if x
		 (vlr-remove  x)
		 )))
  (@::enable-tempvar-reactor)
  )
