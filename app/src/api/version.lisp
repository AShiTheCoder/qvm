;;;; api/version.lisp
;;;;
;;;; Author: Robert Smith

(in-package #:qvm-app)

(defun handle-version ()
  (string-right-trim
   '(#\Newline)
   (with-output-to-string (*standard-output*)
     (show-version))))

(defun |GET-version| (request)
  (declare (ignore request))
  (handle-version))
