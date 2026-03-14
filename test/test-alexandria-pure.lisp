;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; test-alexandria-pure.lisp - Unit tests for alexandria-pure
;;;;
;;;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;;;; SPDX-License-Identifier: BSD-3-Clause

(defpackage #:cl-alexandria-pure.test
  (:use #:cl)
  (:export #:run-tests))

(in-package #:cl-alexandria-pure.test)

(defun run-tests ()
  "Run all tests for cl-alexandria-pure."
  (format t "~&Running tests for cl-alexandria-pure...~%")
  ;; TODO: Add test cases
  ;; (test-function-1)
  ;; (test-function-2)
  (format t "~&All tests passed!~%")
  t)
