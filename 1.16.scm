(define (fast-expt b n)
    (define (even? x)
        (= (remainder x 2) 0))
    (define (square x)
        (* x x))
    (define (fast-expt-iter b n a)
        (cond ((= n 0) a)
              ((even? n) (fast-expt-iter (square b)
                                         (/ n 2)
                                         a))
              (else (fast-expt-iter b
                                    (- n 1)
                                    (* a b)))))
                                    
    (fast-expt-iter b n 1))

(fast-expt 2 0)
(fast-expt 2 1)
(fast-expt 2 2)
(fast-expt 2 3)
(fast-expt 2 4)
(fast-expt 2 5)