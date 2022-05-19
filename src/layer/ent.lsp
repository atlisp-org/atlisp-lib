(defun layer:ent (name)
    "获获取指定图层的图元名"
    "图元"
    "(layer:ent \"0\")
    --> <图元名: -64cb388>"
    (tblobjname "layer"
        name))
