(define-syntax highlight-skript
  (syntax-rules ()
    ((_ x)
     (highlight-regexp x
                       '(("comment" . "#")
                         ("keyword" . "\\b(return|stop|if|else|loop|while)\\b")
                         ("variable" . "\\b([a-zA-Z_][a-zA-Z_0-9]*)\\b")
                         ("string" . "\"")
                         ("number" . "\\b[0-9]+\\.[0-9]+\\b")
                         ("colour" . "&[A-Fa-f0-9kLlLmMnNoOrR]"))))))
