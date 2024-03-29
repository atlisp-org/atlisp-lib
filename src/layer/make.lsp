(defun layer:make (name colour linetype flag)
  "创建一个图层\n参数1:name:图层名称\n参数2:colour:颜色默认nil(7)\n参数3:linetype:线型默认nil(continuous)\n参数4:n70:标志位，默认nil(0)\n  标准标记（按位编码值）：\n  1 = 冻结图层，否则解冻图层\n  2 = 默认情况下在新视口中冻结图层\n  4 = 锁定图层\n  16 = 如果设置了此位，则表条目外部依赖于外部参照\n  32 = 如果同时设置了此位和位 16，则表明已成功融入了外部依赖的外部参照\n  64 = 如果设置了此位，则表明在上次编辑图形时，图形中至少有一个图元参照了表条目。\n  (此标志适用于 autocad 命令。大多数读取 dxf 文件的程序都可以忽略它，并且无需由写入 dxf 文件的程序对其进行设置)"
  ""
  "(layer:make \"ABC\" nil nil nil)"
  (or flag (setq flag 0))
  (or colour (setq colour 7))
  (or linetype (setq linetype "continuous"))
  (entmakex (list
	     (cons 0  "layer")
	     (cons 100 "AcDbSymbolTableRecord")
             (cons 100 "AcDbLayerTableRecord")
             (cons 2 name)
             (cons 70 flag)
             (cons 62 colour)
             (cons 6 linetype))))
