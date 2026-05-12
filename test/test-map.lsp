(defun my-map-test (lst)
  (mapcar '(lambda (x)
            (princ (strcat "processing: " (itoa x) "\n"))
            (* x 2))
          lst))

(my-map-test '(1 2 3))