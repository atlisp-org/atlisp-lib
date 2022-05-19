(defun dcl:set-progressbar (key value / w h color)
  "设置 dcl 进度条的值。"
  ""
  "(dcl:set-progressbar \"pbar1\"
    0.5)"
  (or (setq color theme:bg-color)
    (setq color 152))
  (if (> value 1)
    (setq value 1)
    (if (< value 0)
      (setq value 0)))
  (setq w (dimx_tile key)
    h (dimy_tile key))
  (start_image key)
  (fill_image 0 0 w h 253)
  (fill_image 0 0 (fix (* value w))
    h color)
  (end_image)
  (set_tile (strcat key "txt")
    (strcat (itoa (fix (* value 100)))
      "%")))
