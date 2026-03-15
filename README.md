# cl-alexandria-pure

`cl-alexandria-pure` provides a small, dependency-free subset of Alexandria-style
utilities for Common Lisp projects that want lightweight helper functions without
pulling in external libraries.

## Included helpers

- Control-flow macros: `when-let`, `when-let*`, `if-let`, `if-let*`
- List helpers: `ensure-list`, `flatten`, `mappend`, `lastcar`
- Function helpers: `curry`, `rcurry`, `compose`
- Hash-table helpers: `hash-table-keys`, `hash-table-values`, `alist-hash-table`
- Sequence helpers: `shuffle`, `random-elt`, `iota`
- Symbol helpers: `make-keyword`, `symbolicate`

## Installation

```lisp
(asdf:load-system :cl-alexandria-pure)
```

## Usage

```lisp
(cl-alexandria-pure:flatten '(1 (2 (3 4))))
;; => (1 2 3 4)

(funcall (cl-alexandria-pure:curry #'+ 10) 5)
;; => 15
```

## Testing

```lisp
(asdf:test-system :cl-alexandria-pure)
```

## License

Apache-2.0. See `LICENSE`.
