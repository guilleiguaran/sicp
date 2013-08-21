;; SICP Exercise 1.3
;;
;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.


(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-greatest-squares x y z)
    (if (> x y)
      (if (> y z) (sum-of-squares x y) (sum-of-squares x z))
      (if (> z x) (sum-of-squares y z) (sum-of-squares y x))))

; test-case
(= 13 (sum-of-greatest-squares 1 2 3))
