(defun vectra:deg->rad (deg)
  "角度转弧度"
  "real - 返回弧度值"
  "(vectra:deg->rad 180) => 3.141593"
  (* pi (/ deg 180.0)))