;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-alexandria-pure)

;;; Core types for cl-alexandria-pure
(deftype cl-alexandria-pure-id () '(unsigned-byte 64))
(deftype cl-alexandria-pure-status () '(member :ready :active :error :shutdown))
