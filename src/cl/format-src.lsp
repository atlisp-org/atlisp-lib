(defun format (stream ctrl-string variables
	       / flag-instruct  flag-comma number1 number2 result  to-string tmp-str init-flag)
  ;;" D ʮ�������� "
  ;;" $ С�����2λ��F ������ E ָ����ʽ"
  ;;" @ ������ v �Ӳ�����ȡ��С����λ�� # ʣ��Ĳ����ĸ�����"
  ;;" A �ַ��� S �� read ���ء�"
  ;;"TODO: X 16����, O 8����, B ������, R ������ơ�"
  ;;"TODO: ���� ~{ ~} ��������ʽ�� ~[ ~] " 
  
  (defun to-string (para)
    (cond
      ((= 'INT (type-of para)) (itoa para))
      ((= 'REAL (type-of para)) (rtos para 2 3))
      ((= 'STR (type-of para)) para)
      ((= 'LIST (type-of para)) (vl-prin1-to-string para ))
      ((= 'SYM (type-of para)) (vl-symbol-name para))
      )
    )
  (defun init-flag ()
    (setq flag-instruct nil
	  flag-comma nil
	  number1 ""
	  number2 ""))
  (init-flag)
  (setq result "")
  (while (/= "" ctrl-string)
    (if flag-instruct
	(cond
	  ;; ���η�
	  ((= (ascii ",")(ascii ctrl-string))
	   ;; comma
	   (setq flag-comma T)
	   )
	  ((= (ascii "v")(ascii ctrl-string))
	   ;; v
	   (setq number1 (to-string (car variables)))
	   (setq variables (cdr variables))
	   )
	  ((= (ascii "#")(ascii ctrl-string))
	   ;; #
	   (setq number1 (to-string (length variables)))
	   (setq variables (cdr variables))
	   )
	  
	  ((and (> (ascii ctrl-string) 47)
		(> 58 (ascii ctrl-string)))
	   ;; ����
	   (if flag-comma
	       (setq number2 (strcat number2 (substr ctrl-string 1 1)))
	       (setq number1 (strcat number1 (substr ctrl-string 1 1)))
	       ))

	  ((=  (ascii "~") (ascii ctrl-string)) ;; ����ָ�������ʱ�����~
	   (setq result (strcat result "~"))
	   (init-flag))
	  ((= (ascii "%")(ascii ctrl-string))
	   ;; ����
	   (setq result (strcat result "\n"))
	   (init-flag))
	  ((= (ascii "&")(ascii ctrl-string))
	   (setq result (strcat result "\n"))
	   (init-flag))
	  ((= (ascii "A")(ascii (strcase (substr ctrl-string 1 1))))
	   ;; �ַ���
	   (setq result (strcat result (to-string (car variables))))
	   (setq variables (cdr variables))
	   (init-flag))
	  ((= (ascii "D")(ascii (strcase (substr ctrl-string 1 1))))
	   ;; ������С��
	   (if (/= "" number1) ; ����ռλ��
	       (progn 
		 (setq tmp-str  (to-string (car variables)))
		 (if (> (atoi number1)(strlen tmp-str))
		     (repeat (- (atoi number1)(strlen tmp-str))
			     (setq result (strcat result " "))))
		 (setq tmp-str "")))
	   (setq result (strcat result (to-string (car variables))))
	   (setq variables (cdr variables))
	   (init-flag))
	  ((= (ascii "F")(ascii (strcase (substr ctrl-string 1 1))))
	   ;; ������
	   (if (= "" number2)
	       (setq tmp-str (rtos (car variables) 2 3))
	       (setq tmp-str (rtos (car variables) 2 (atoi number2))))
	   (if (/= "" number1) ; ����ռλ��
	       (progn 
		 (if (> (atoi number1)(strlen tmp-str))
		     (repeat (- (atoi number1) (strlen tmp-str))
			     (setq result (strcat result " "))))))
	   (setq result (strcat result tmp-str))
	   (setq tmp-str "")
	   (setq variables (cdr variables))
	   (init-flag))
	  ((= (ascii "E")(ascii (strcase (substr ctrl-string 1 1))))
	   ;; ָ����ʽ
	   (if (= "" number2)
	       (setq tmp-str (rtos (car variables) 1 3))
	       (setq tmp-str (rtos (car variables) 1 (atoi number2))))
	   (if (/= "" number1) ; ����ռλ��
	       (progn 
		 (if (>  (atoi number1)(strlen tmp-str))
		     (repeat (- (atoi number1) (strlen tmp-str))
			     (setq result (strcat result " "))))))
	   (setq result (strcat result tmp-str))
	   (setq tmp-str "")
	   (setq variables (cdr variables))
	   (init-flag))	  
	  ((= (ascii "$")(ascii (strcase (substr ctrl-string 1 1))))
	   ;; ����
	   (if (= "" number1)
	       (setq result (strcat result (rtos (car variables) 2 2)))
	       (setq result (strcat result (rtos (car variables) 2 (atoi number1)))))
	   (setq variables (cdr variables))
	   (init-flag))
	  
	  )
	(cond
	  ((=  (ascii "~") (ascii ctrl-string)) ;; ����ָ�������ʱ�����~
	   (setq flag-instruct T))	
	  (t
	   (setq result (strcat result (substr ctrl-string 1 1)))
	   )))
    (setq ctrl-string (substr ctrl-string 2)))

  (cond
    ((= T stream)
     (princ result)
     (princ))
    ((= nil stream)
     result)
    ((= (type stream) 'FILE)
     (write-line result stream))
    )
  )
  
