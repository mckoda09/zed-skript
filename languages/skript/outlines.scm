(define-syntax outline-skript
  (syntax-rules ()
    ((_ x)
     (outline-regexp x
                     '(("options:" . 1)
                       ("variables:" . 1)
                       ("aliases:" . 1)
                       ("event" . 1)
                       ("function" . 1)
                       ("command" . 1))))))
