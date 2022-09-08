(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
(car (cdr s))
)

(define (caddr s) 
(car (cdr (cdr s)))
)

(define (ordered? s) 
(cond ((null? s) True)
    ((null? (cdr s)) True)
    ((<= (car s) (car(cdr s))) (ordered? (cdr s)))
    (else False)
    )
)

(define (square x) (* x x))

(define (pow base exp) 
(cond ((= base 1) 1)
    ((= exp 1) base)
    ((even? exp) (* (pow base (/ exp 2)) (pow base (/ exp 2))))
    ((odd? exp) (* base (* (pow base (/ (- exp 1) 2)) (pow base (/ (- exp 1) 2)))))
)
)
