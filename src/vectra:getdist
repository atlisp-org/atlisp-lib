(defun vectra:getdist (msg old p / value)
  (if p (setq value (getdist (strcat msg "
          <"
          (rtos old 2 2)
          ">: ")
        p))
    (setq value (getdist (strcat msg "
          <"
          (rtos old 2 2)
          ">: "))))
  (if (null value)
    old value))
