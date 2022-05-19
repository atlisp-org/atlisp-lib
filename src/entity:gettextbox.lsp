(defun entity:gettextbox (ent-text offset / pt1 pt2 pts)
  "获取单行文本包围框"
  "return:文字外框（偏移后）的四个角点（左下，右下，右上，左上"
  "example:(entity:getTextBox (car(entsel))
    2)"
  (setq pts (textbox (entget ent-text)))
  (if offset (entity:rec-2pt->4pt (list:- (car pts)
        (list offset offset 0))
      (list:+ (cadr pts)
        (list offset offset 0)))
    pts))
