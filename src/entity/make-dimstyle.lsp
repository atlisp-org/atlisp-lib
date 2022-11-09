(defun entity:make-dimstyle (name / my_dimasz my_dimaunit my_dimclrd my_dimclre my_dimclrt my_dimdli my_dimdsep my_dimexe my_dimexo my_dimlfac my_dimlwd my_dimlwe my_dimscale my_dimtad my_dimtih my_dimtix my_dimtofl my_dimtoh my_dimtxt my_dimzin)
  "创建标注样式,name:标注样式名"
  (entmake (list (quote (0 . "STYLE"))
      (quote (100 . "AcDbSymbolTableRecord"))
      (quote (100 . "AcDbTextStyleTableRecord"))
      (quote (2 . "标注"))
      (quote (70 . 0))
      (quote (40 . 0))
      (quote (41 . 0.8))
      (quote (50 . 0.0))
      (quote (71 . 0))
      (quote (42 . 2.5))
      (quote (3 . "SimSun.ttf"))
      (quote (4 . ""))))
  (entmake (list (quote (0 . "BLOCK"))
      (quote (100 . "AcDbEntity"))
      (quote (67 . 0))
      (quote (8 . "0"))
      (quote (100 . "AcDbBlockBegin"))
      (quote (70 . 0))
      (quote (10 0.0 0.0 0.0))
      (quote (2 . "_Oblique"))
      (quote (1 . ""))))
  (entmake (list (quote (0 . "LINE"))
      (quote (100 . "AcDbEntity"))
      (quote (67 . 0))
      (quote (8 . "0"))
      (quote (62 . 0))
      (quote (6 . "ByBlock"))
      (quote (370 . -2))
      (quote (100 . "AcDbLine"))
      (quote (10 -0.5 -0.5 0.0))
      (quote (11 0.5 0.5 0.0))
      (quote (210 0.0 0.0 1.0))))
  (entmake (list (quote (0 . "ENDBLK"))))
  (entupd (tblobjname "Block"
      "_Oblique"))
  (setq my_dimscale 100)
  (setq my_dimasz 2.5)
  (setq my_dimexo 1)
  (setq my_dimdli 3.75)
  (setq my_dimexe 1.25)
  (setq my_dimtxt 2.5)
  (setq my_dimlfac 1)
  (setq my_dimtih 0)
  (setq my_dimtoh 0)
  (setq my_dimtad 1)
  (setq my_dimzin 8)
  (setq my_dimtofl 1)
  (setq my_dimclrd 256)
  (setq my_dimclre 256)
  (setq my_dimclrt 256)
  (setq my_dimaunit 1)
  (setq my_dimdsep 46)
  (setq my_dimlwd -1)
  (setq my_dimlwe -1)
  (setq my_dimtix 1)
  (entmake (list (quote (0 . "DIMSTYLE"))
      (quote (100 . "AcDbSymbolTableRecord"))
      (quote (100 . "AcDbDimStyleTableRecord"))
      (cons 2 name)
      (quote (70 . 0))
      (quote (141 . 2.5))
      (quote (143 . 0.0393701))
      (quote (147 . 0.625))
      (quote (171 . 3))
      (quote (271 . 1))
      (quote (272 . 1))
      (quote (274 . 3))
      (quote (283 . 0))
      (quote (284 . 8))
      (cons 40 my_dimscale)
      (cons 41 my_dimasz)
      (cons 42 my_dimexo)
      (cons 43 my_dimdli)
      (cons 44 my_dimexe)
      (cons 140 my_dimtxt)
      (cons 144 my_dimlfac)
      (cons 73 my_dimtih)
      (cons 74 my_dimtoh)
      (cons 77 my_dimtad)
      (cons 78 my_dimzin)
      (cons 172 my_dimtofl)
      (cons 174 my_dimtix)
      (cons 176 my_dimclrd)
      (cons 177 my_dimclre)
      (cons 178 my_dimclrt)
      (cons 275 my_dimaunit)
      (cons 278 my_dimdsep)
      (cons 371 my_dimlwd)
      (cons 372 my_dimlwe)
      (cons 340 (tblobjname "STYLE"
          "标注"))
      (cons 342 (cdr (assoc 330 (entget (tblobjname "BLOCK"
                "_Oblique")))))))
  (entupd (tblobjname "Dimstyle"
      name))
  (princ))
