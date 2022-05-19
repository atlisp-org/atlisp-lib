(defun dcl:mtext (key rows width / color)
  "带条格的多行文本。对赋传下的一段字符串自行换行处理。"
  (or (setq color theme:bg-color)
    (setq color 152))
  (setq i% 0)
  (write-line (strcat ":column{"
      ":image{ height=0.17; color="
      (itoa color)
      "; fixed_height=true;vertical_margin=none;}"
      ":image{ height=0.08; color="
      (itoa color)
      "; fixed_height=true;}")
    dcl-fp)
  (repeat rows (write-line (strcat ":text{key=\""
        key (itoa (1+ i%))
        "\";value=\"\";width="
        (itoa width)
        ";height=1.3;}"
        ":image{ height=0.08; color="
        (itoa color)
        "; fixed_height=true;}")
      dcl-fp)
    (setq i% (1+ i%)))
  (write-line (strcat ":image{ height=0.17; color="
      (itoa color)
      "; fixed_height=true;vertical_margin=none;}}:spacer{}")
    dcl-fp))
