#lang r5rs

(define (teen? age)
  (and (or (> age 13) (= age 13))
       (or (< age 19) (= age 19))))
