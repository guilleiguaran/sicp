#lang r5rs

(define (european-time time)
  (let ((hour (car time))
       (period (car (cdr time))))
    (if (eq? period 'am) hour (+ 12 hour))))