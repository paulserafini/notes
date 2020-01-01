(defun read-lines (filePath)
  "Return a list of lines of a file at filePath."
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

(defun get-title (file)
  (cl-loop for line in (read-lines file)
           if (string-match "<title>\\(.*?\\)</title>" line)
           do (return (match-string 1 line))))

(defun create-index ()
  (let* ((files (directory-files default-directory))
	 (files (seq-filter (lambda (x) (not (equal (substring x 0 1) "#"))) files))
	 (files (seq-filter (lambda (x) (not (equal (substring x 0 1) "."))) files))
	 (files (seq-filter (lambda (x) (not (equal (substring x -1) "#"))) files))
	 (files (seq-filter (lambda (x) (not (equal (substring x -1) "~"))) files))
	 (files (remove "index.html" files))
	 (articles (cl-loop for file in files if (equal (file-name-extension file) "html") collect file)))
    (cl-loop for article in articles
             do (princ (format "- [[./%s][%s]]\n" article (get-title article))))))
