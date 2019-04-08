(define (multiply a b)
    (define (double x)
        (* 2 x))
    (define (halve x)
        (/ x 2))
    (define (even? x)
        (= (remainder x 2) 0))
    
    (define (multiply_iter a b v)
        (cond ((= b 1) (+ v a))
              ((even? b) (multiply_iter (double a) 
                                        (halve b)
                                        v))
              (else (multiply_iter a 
                                   (- b 1)
                                   (+ v a)))))
                                   
    (multiply_iter a b 0))

(multiply 2 1)
(multiply 2 3)
(multiply 2 4)
(multiply 2 5)
(multiply 10 55)