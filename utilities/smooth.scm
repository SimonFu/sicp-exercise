(define (smooth f)
    (define dx 0.0001)
    (lambda (x) (/ (+ (f (- x dx))
                      (f x)
                      (f (+ x dx)))
                   3)))