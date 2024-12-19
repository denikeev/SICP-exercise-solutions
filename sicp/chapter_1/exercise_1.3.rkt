#lang sicp

(#%require rackunit)

(define (square a) (* a a))
(define (sum-of-squares a b) (+ (square a) (square b)))

(define (solution a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b a) (< b c)) (sum-of-squares a c))
          (else (sum-of-squares a b))))

(check-equal? (solution 4 2 3) 25)