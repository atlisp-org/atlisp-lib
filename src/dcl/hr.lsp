(defun dcl:hr (size / color)
  "DCL 水平线,粗度 size 值 推荐为 0.08(一个像素),0.17(两个像素)."
  "dcl格式字符串"
  "(dcl:hr 0.08)"
  (or (setq color theme:bg-color)
      (setq color 152))
  (setq  size (rtos size 2 2))
  
  (write-line (strcat ":image{ height="
    (if (= 46 (ascii size))
			  (strcat "0" size)
			size)
      "; color="
      (itoa color)
      "; fixed_height=true;vertical_margin=none;}")
	      dcl-fp))
