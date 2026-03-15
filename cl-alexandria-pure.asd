;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; cl-alexandria-pure.asd
;;;; Common utility functions with ZERO external dependencies

(asdf:defsystem #:cl-alexandria-pure
  :description "Common utility functions for Common Lisp - pure implementation"
  :author "Parkian Company LLC"
  :license "Apache-2.0"
  :version "0.1.0"
  :serial t
  :components ((:file "package")
               (:module "src"
                :components ((:file "macros")
                             (:file "lists")
                             (:file "functions")
                             (:file "hash-tables")
                             (:file "sequences")
                             (:file "symbols")))))

(asdf:defsystem #:cl-alexandria-pure/test
  :description "Tests for cl-alexandria-pure"
  :depends-on (#:cl-alexandria-pure)
  :serial t
  :components ((:module "test"
                :components ((:file "test-alexandria-pure"))))
  :perform (asdf:test-op (o c)
             (let ((result (uiop:symbol-call :cl-alexandria-pure.test :run-tests)))
               (unless result
                 (error "Tests failed")))))
