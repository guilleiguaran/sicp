#lang r5rs

(define (insert-and list)
  (if (null? (cdr list)) (cons 'and list)
      (cons (car list) (insert-and (cdr list)))))
