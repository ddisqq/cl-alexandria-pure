;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; cl-alexandria-pure.asd
;;;; Pure Common Lisp utility helpers with zero external dependencies

(asdf:defsystem #:cl-alexandria-pure
  :name "cl-alexandria-pure"
  :description "A small, dependency-free subset of Alexandria-style utilities"
  :author "Park Ian Co"
  :license "Apache-2.0"
  :version "0.1.0"
  :serial t
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "conditions")
                             (:file "types")
                             (:file "macros")
                             (:file "lists")
                             (:file "functions")
                             (:file "hash-tables")
                             (:file "sequences")
                             (:file "symbols"))))
  :in-order-to ((asdf:test-op (asdf:test-op #:cl-alexandria-pure/test))))

(asdf:defsystem #:cl-alexandria-pure/test
  :description "Tests for cl-alexandria-pure"
  :depends-on (#:cl-alexandria-pure)
  :serial t
  :components ((:module "test"
                :serial t
                :components ((:file "test")
                             (:file "test-alexandria-pure"))))
  :perform (asdf:test-op (op c)
             (declare (ignore op c))
             (unless (uiop:symbol-call :cl-alexandria-pure.test :run-tests)
               (error "Tests failed"))))
