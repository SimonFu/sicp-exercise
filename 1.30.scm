(define (integral f a b n)
    (load "utilities/sum-iter.scm")
    (define h (/ (- b a) n))
    (define (y k) (f (+ a (* k h))))
    (define (next k)
        (+ k 1))
    (define (term k)
        (cond ((= k 0) (y 0))
              ((even? k) (* 2 (y k)))
              (else (* 4 (y k)))))
              
    (* (/ h 3) (sum term 0 next n)))

(load "utilities/cube.scm")
(integral cube 0.0 1.0 100)
(integral cube 0.0 1.0 1000)
(integral cube 0.0 1.0 10000)
 