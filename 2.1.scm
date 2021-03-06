(define (make-rat n d)
    (let (  (rn (* n -1))
            (rd (* d -1)))
        (cond   ((and (< 0 n) (< d 0)) (cons rn rd))
                ((and (> 0 n) (< d 0)) (cons rn rd))
                (else (cons n d)))))

(make-rat 1 2)
(make-rat 1 -2)
(make-rat -1 2)
(make-rat -1 -2)
