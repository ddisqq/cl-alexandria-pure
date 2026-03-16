(asdf:defsystem #:cl-alexandria-pure
  :depends-on (#:alexandria #:bordeaux-threads)
  :components ((:module "src"
                :components ((:file "package")
                             (:file "cl-alexandria-pure" :depends-on ("package"))))))