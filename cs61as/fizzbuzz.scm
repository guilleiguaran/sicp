#lang r5rs

(define (fizzbuzz n)
  (cond
    ((and (= 0 (remainder n 3)) (= 0 (remainder n 5))) 'fizzbuzz)
    ((= 0 (remainder n 3)) 'fizz)
    ((= 0 (remainder n 5)) 'buzz)))