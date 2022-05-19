(defun vectra:osnap-disable nil (if (null $p-saved-osmode)
    (setq $p-saved-osmode (getvar "OSMODE")))
  (if (< $p-saved-osmode 16384)
    (setvar "OSMODE"
      (+ $p-saved-osmode 16384))))
