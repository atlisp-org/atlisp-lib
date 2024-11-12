(defun example:asilisp ()
  (vl-catch-all-apply 'arxunload(list "asilisp"))
  (if (null asi_connect)
      (arxload "asilisp")
      ) ;;加载arx函数库
  (SETQ udl-n "test.udl")
  (SETQ Link-F (FINDFILE "UserDataCache"))
  (SETQ UDL-P (STRCAT Link-F "\\Data Links\\" udl-n)) ;udl路径
  (if (findfile UDL-P)
      ()
      (progn (alert "udl文件找不到了") (exit))
      )
  ;;(setq sql "update [test] set `姓名` = '张三' where id = '1'")
  (setq sql "select * from test")
  (setq env_dsc (ASI_connect UDL-P))    ;连通数据库，这里不传入用户名和密码，因为udl里面是通过编译法设置的
  (setq obj_dsc (asi_prepare env_dsc sql)) ;准备sql语句object

  (asi_objp obj_dsc)            ;验证sql语句是否合法
  (setq csr_dsc (asi_alloc obj_dsc "loc" 't)) ;分配游标
  (setq coldsc (asi_coldsc obj_dsc))    ;获取列的描述信息（设计表、表信息）
  (asi_dbms obj_dsc)            ;获取供应商信息
  (asi_msg obj_dsc)            ;获取供应商的dll信息
  (asi_rowqty obj_dsc)            ;查看一下sql语句影响行数，如果是select的话，可能是0行数；update、delete、insert这三个函数才会有影响行数大于1的返回
  (asi_sql obj_dsc)            ;sql字串描述
  (asi_stmtype obj_dsc)            ;返回的是乱码
  (asi_feature obj_dsc '(30))        ;查询供应商是否支持对应函数(27 update;30 insert 18 Alter table)
  (asi_open csr_dsc)            ;打开游标
  (asi_statecsr csr_dsc)            ;检查游标状态
;;;(SETQ csr_dsc (asi_infschema env_dsc "CHARACTER_SETS"));information_schema英语单次的缩写(LIST "SCHEMATA" "TABLES" "COLUMNS" "STATISTICS" "USER_PRIVILEGES" "SCHEMA_PRIVILEGES" "TABLE_PRIVILEGES" "COLUMN_PRIVILEGES" "CHARACTER_SETS" "COLLATIONS" "COLLATION_CHARACTER_SET_APPLICABILITY" "TABLE_CONSTRAINTS" "KEY_COLUMN_USAGE" "ROUTINES" "VIEWS" "TRIGGERS")

  (asi_execute obj_dsc)        ;执行sql语句(这个函数没有成功)
  ;;(asi_iexecute env_dsc sql)        ;执行sql语句

  ;;(asi_pardsc csr_dsc);这个执行后arx错误

  (asi_fetch csr_dsc "next")        ;游标往下
  (setq d1 (asi_coldsc csr_dsc))
  (setq d2(asi_coldsc obj_dsc))
  ;;(asi_providers)          ;执行一次返回一个游标，每次都不同，好奇怪
  (asi_close csr_dsc)        ;关闭游标

  (asi_objlist)              ;返回所有执行过的sql语句描述
  (asi_objname obj_dsc)      ;返回的是空引号，好奇怪
  (asi_nexecute env_dsc sql) ;执行本机语句，不知道是不是这么用的(不知道是不是为事务法准备的函数)，目前我传入了一条sql语句也返回T了

  (vl-catch-all-apply 'asi_deallocstm(list obj_dsc)) ;取消分配的sql语句（后面其他函数可能会出错，因为sql语句已经取消了）
  (progn
    (setq obj_dsc nil)
    (setq env_dsc nil)
    (vl-catch-all-apply
     (function (lambda (a)
       (asi_disconnect (list "SQLSESSION" a)) ;断开连接
       ))
     (list 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0)
     )
    (setq csr_dsc nil)
    (setq obj_dsc nil)
    (setq env_dsc nil)
    )
  (arxunload "asilisp"))
