(define (smallest-divisor n)
    (define (divide? a b) (= (remainder a b) 0))

    (define (find-divisor n test)
        (cond ((> (square test) n) n)
              ((divide? n test) test)
              (else (find-divisor n (+ test 1)))))
              
    (find-divisor n 2))

    (smallest-divisor 199)
    (smallest-divisor 1999)
    (smallest-divisor 19999)