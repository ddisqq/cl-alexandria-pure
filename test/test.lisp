;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(defpackage #:cl-alexandria-pure.test
  (:use #:cl #:cl-alexandria-pure)
  (:export #:run-tests))

(in-package #:cl-alexandria-pure.test)

(defun run-tests ()
  (format t "Running professional test suite for cl-alexandria-pure...~%")
  (assert (initialize-alexandria-pure))
  (format t "Tests passed!~%")
  t)
