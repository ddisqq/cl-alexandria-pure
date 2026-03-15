;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-alexandria-pure)

(define-condition cl-alexandria-pure-error (error)
  ((message :initarg :message :reader cl-alexandria-pure-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-alexandria-pure error: ~A" (cl-alexandria-pure-error-message condition)))))
