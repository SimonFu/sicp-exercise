(define (append! x y)
    (define (final-pair x)
        (if (null? (cdr x))
            x
            (final-pair (cdr x))))
    (if (null? x)
        (error "Empty list: " x)
        (begin  (set-cdr! (final-pair x) y)
                x)))

(define x (list 'a 'b))
(define y (list 'c 'd))
(define z (append x y))
(display z)
(cdr x)
(define w (append! x y))
(display w)
(cdr x)