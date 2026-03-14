;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

(load "cl-alexandria-pure.asd")
(asdf:test-system :alexandria-pure/test)
(format t "~&✓ alexandria-pure tests passed!~%")
(quit)
