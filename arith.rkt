#lang plai

(define-type ArithC
  [numC (n number?)]
  [plusC (l ArithC?)
         (r ArithC?)]
  [multC (l ArithC?)
         (r ArithC?)])


(define (interp e)
  (type-case ArithC e
    [numC (n) n]
    [plusC (l r) (+ (interp l)
              (interp r))]
    [multC (l r) (* (interp l)
              (interp r))]))
