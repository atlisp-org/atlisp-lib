(defun astronomy:sza (latitude day-of-year )
  "某纬度上某日太阳高度角"
  (- (* 0.5 pi)
     (abs
      (-
       latitude
       (astronomy:declination-by-day day-of-year)))))
