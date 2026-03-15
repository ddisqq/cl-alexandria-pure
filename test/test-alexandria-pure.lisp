;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

;;;; test-alexandria-pure.lisp - Unit tests for alexandria-pure
;;;;
;;;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;;;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-alexandria-pure.test)

(defun run-tests ()
  "Run the cl-alexandria-pure smoke tests."
  (let ((captured nil))
    (when-let (value 42)
      (setf captured value))
    (assert (= 42 captured))

    (assert (null (if-let (value nil) value nil)))
    (assert (= 6 (if-let* ((x 2) (y (+ x 4))) y 0)))

    (assert (equal '(7) (ensure-list 7)))
    (assert (equal '(1 2 3 4) (flatten '(1 (2 (3 4))))))
    (assert (equal '(2 4 6)
                   (mappend (lambda (item) (list (* 2 item)))
                            '(1 2 3))))
    (assert (= 4 (lastcar '(1 2 3 4))))
    (assert (proper-list-p '(a b c)))

    (let ((cycle (list 1 2 3)))
      (setf (cdr (last cycle)) cycle)
      (assert (circular-list-p cycle)))

    (assert (= 7 (funcall (curry #'+ 3) 4)))
    (assert (= 7 (funcall (rcurry #'- 3) 10)))
    (assert (= 8 (funcall (compose (lambda (value) (+ value 2))
                                   (lambda (value) (* value 2)))
                          3)))

    (let ((table (alist-hash-table '((a . 1) (b . 2)))))
      (assert (equal '(A B)
                     (sort (copy-list (hash-table-keys table))
                           #'string<
                           :key #'symbol-name)))
      (assert (equal '(1 2)
                     (sort (copy-list (hash-table-values table)) #'<))))

    (assert (equal '(0 1 2 3) (iota 4)))
    (assert (eql :FOO (make-keyword "foo")))

    (let ((*package* (find-package :cl-alexandria-pure.test)))
      (assert (eq 'LEFT-RIGHT (symbolicate "LEFT" #\- "RIGHT"))))

    t))
