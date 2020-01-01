#!/bin/bash

files=$(find -name "*.org" | grep -v "index")
for file in $files
do
    emacs --batch -L "." --eval "(setq make-backup-files nil)" --eval "(require 'htmlize)" --eval "(setq org-confirm-babel-evaluate nil)" --eval "(org-babel-do-load-languages 'org-babel-load-languages '((R . t)))" -l org $file -f org-html-export-to-html --kill
done

files=$(find -name "*.org" | grep "index")
for file in $files
do
    emacs --batch -L "." --eval "(setq make-backup-files nil)" --eval "(require 'htmlize)" --eval "(setq org-confirm-babel-evaluate nil)" --eval "(org-babel-do-load-languages 'org-babel-load-languages '((R . t)))" -l org $file -f org-html-export-to-html --kill
    #emacs --batch -L "." --eval "(require 'htmlize)" --eval "(setq org-confirm-babel-evaluate nil)" -l org $file -f org-html-export-to-html --kill
done
