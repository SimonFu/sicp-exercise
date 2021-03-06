(define same-parity
    (lambda (x . l)
        (define (iter l)
            (let ((r (remainder x 2)))
                (cond   ((null? l) '())
                        ((= (remainder (car l) 2) r) (cons (car l) (iter (cdr l))))
                        (else (iter (cdr l))))))

        (cons x (iter l))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
