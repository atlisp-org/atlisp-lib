(defun entity:change-textstyle (textstylename fontname bigfontname / txtstyle)
  "更改指定字体样式的字体\n参数:\nTextStyleName:字体样式名称\nFontName:字体名字\nBigFontName:大字体名字"
  "无"
  "(entity:ChangeTextStyle \"STANDARD\"
    \"SIMfang.TTF\"
    \"\")\n(entity:Change-TextStyle \"STANDARD\"
    \"simplex.shx\"
    \"dayuxp.shx\")"
  (setq txtstyle (vla-item (vla-get-textstyles (std:active-document))
      textstylename))
  (if (wcmatch (vl-filename-extension fontname)
      ".TTF,.ttf")
    (vla-put-fontfile txtstyle (strcat (getenv "Windir")
        "\\fonts\\"
        FONTNAME))
    (PROGN (vla-put-FontFile TXTSTYLE FONTNAME)
      (vla-put-BigFontFile TXTSTYLE BIGFONTNAME)))
  (vla-Regen (STD:ACTIVE-DOCUMENT)
    acAllViewports)
  (vlax-release-object TXTSTYLE)
  (PRINC))
