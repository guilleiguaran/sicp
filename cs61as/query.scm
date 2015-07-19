#lang r5rs

(define (swap-head list)
  (cons (car (cdr list))
        (cons (car list) (cdr (cdr list)))))

(define (add-question-mark list)
  (if (null? (cdr list)) (cons (car list) '(?))
      (cons (car list) (add-question-mark (cdr list)))))

(define (query list)
  (swap-head (add-question-mark list)))
