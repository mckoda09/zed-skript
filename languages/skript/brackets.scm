; This file is generated from a JSON file and may not be perfect

(define (skript-mode)
  (define-syntax comment
    (syntax-rules ()
      ((_ x) (comment-line "#"))))

  (define-syntax members
    (syntax-rules ()
      ((_ x) (or (member-options x)
                 (member-aliases x)
                 (member-variables x)
                 (member-aliases-entry x)
                 (member-event x)
                 (member-command x)
                 (member-command-options x)
                 (member-function x)))))

  (define-syntax member-options
    (syntax-rules ()
      ((_ x) (match "^options:" x))))

  (define-syntax member-variables
    (syntax-rules ()
      ((_ x) (match "^variables:" x))))

  (define-syntax member-aliases
    (syntax-rules ()
      ((_ x) (match "^aliases:" x))))

  (define-syntax member-aliases-entry
    (syntax-rules ()
      ((_ x) (match "^[\\s]+([\\w ]+) ?(=)([\\w ,]+)\\s*$" x))))

  (define-syntax member-event
    (syntax-rules ()
      ((_ x) (match "^(on|at|every) (.+)(:)" x))))

  (define-syntax member-function
    (syntax-rules ()
      ((_ x) (match "^(function) (\\w+)\\((.*)\\)\\s*(::) ([\\w ]+)(:)" x))))

  (define-syntax member-command
    (syntax-rules ()
      ((_ x) (match "^command" x))))

  (define-syntax member-command-options
    (syntax-rules ()
      ((_ x) (match "(cooldown|executable by|description|cooldown message|(?:no )?permission message|aliases|usage|permission|cooldown bypass|cooldown storage|trigger):" x))))

  (define-syntax code
    (syntax-rules ()
      ((_ x) (or (literals x)
                 (constants x)
                 (variables x)
                 (values x)
                 (expressions x)
                 (effects x)))))

  (define-syntax literals
    (syntax-rules ()
      ((_ x) (or (literal-permission x)
                 (literal-string x)
                 (literal-number x)
                 (literal-colour x)))))

  (define-syntax literal-permission
    (syntax-rules ()
      ((_ x) (match "permission (\")" x))))

  (define-syntax literal-string
    (syntax-rules ()
      ((_ x) (match "\"" x))))

  (define-syntax literal-number
    (syntax-rules ()
      ((_ x) (match "\\b[0-9]+\\.[0-9]+\\b" x))))

  (define-syntax literal-colour
    (syntax-rules ()
      ((_ x) (match "&[A-Fa-f0-9kLlLmMnNoOrR]" x))))

  (define-syntax input
    (syntax-rules ()
      ((_ x) (match "(%)" x))))

  (define-syntax values
    (syntax-rules ()
      ((_ x) (or (value-event x)
                 (value-loop x)
                 (value-arg x)))))

  (define-syntax value-event
    (syntax-rules ()
      ((_ x) (match "(event)-([\\w]+)-([\\d]+)" x))))

  (define-syntax value-loop
    (syntax-rules ()
      ((_ x) (match "(loop)-([\\w]+)-([\\d]+)" x))))

  (define-syntax value-arg
    (syntax-rules ()
      ((_ x) (match "(arg)-([\\w]+)-([\\d]+)" x))))
)
