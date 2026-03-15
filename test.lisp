;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(load "cl-alexandria-pure.asd")
(asdf:test-system :alexandria-pure/test)
(format t "~&✓ alexandria-pure tests passed!~%")
(quit)
