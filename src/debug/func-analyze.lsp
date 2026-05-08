(defun func:calls (filepath / fh line lines result)
  "分析 LISP 文件中的所有函数调用，返回去重列表"
  "列表"
  "(func:calls \"test.lsp\")"
  (if (setq fh (open (findfile filepath) "r"))
      (progn
    (while (setq line (read-line fh))
          (foreach item (func:extract line)
      (if (not (member item result))
        (setq result (cons item result)))))
    (close fh)
    (reverse result))
      (progn
    (princ (strcat "\n[ERROR] 文件未找到: " filepath "\n"))
    nil)))

(defun func:extract (str / i n ch inq res word)
  "从字符串提取函数名"
  (setq i 1 n (strlen str) inq nil res nil word "")
  (while (<= i n)
  (setq ch (substr str i 1))
  (cond
      ((= ch "\"") (setq inq (not inq) word (strcat word ch)))
      ((and (not inq) (= ch "("))
       (if (and (> (strlen word) 0)
        (not (func:quoted-p word))
        (func:symbol-p word))
           (setq res (cons word res)
                 word ""))
       (setq word "("))
      ((and (not inq) (member ch '(" " "\t" ")" "\n")))
       (if (and (= (substr word 1 1) "(")
        (> (strlen word) 1)
        (not (func:quoted-p word))
        (func:symbol-p (substr word 2)))
           (setq res (cons (substr word 2) res)))
       (setq word ""))
      (t (setq word (strcat word ch))))
  (setq i (1+ i)))
  (reverse res))

(defun func:symbol-p (s / c)
  "检查是否为有效的符号名"
  (if (or (null s) (= s "") (= s "\""))
      nil
      (progn
    (setq c (substr s 1 1))
    (if (wcmatch c "[0-9]")
      nil
      (not (wcmatch s "*[^a-zA-Z0-9_:<>-]*")))))

(defun func:quoted-p (s)
  "检查是否是引用列表如 '(...)"
  (wcmatch s "'(*)"))

(defun func:print-calls (filepath / calls)
  "打印函数调用分析结果"
  (if (setq calls (func:calls filepath))
      (progn
    (princ (strcat "\n文件: " filepath "\n"))
    (princ (strcat "调用次数: " (itoa (length calls)) "\n"))
    (princ (strcat "去重后: " (itoa (length (func:unique calls))) " 个\n"))
    (princ "--------------------------------\n")
    (foreach fn calls
          (princ (strcat fn "\n")))
    calls)
      nil))

(defun func:unique (l)
  "列表去重"
  (if (null l) nil
      (cons (car l)
      (func:unique (vl-remove (car l) (cdr l))))))
