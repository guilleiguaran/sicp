#lang r5rs

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define (lat? list)
  (if (null? list) #t
      (if (atom? (car list)) (lat? (cdr list)) #f)))