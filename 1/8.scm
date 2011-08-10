;; SICP Exercise 1.8
;;
;; Newton's method for cube roots is based on the fact that if y is an
;; approximation to the cube root of x, then a better approximation is given
;; by the value (figure in book)
;;
;; Use this formula to implement a cube-root procedure analogous to the
;; square-root procedure. (In section 1.3.4 we will see how to implement
;; Newton's method in general as an abstraction of these square-root and
;; cube-root procedures.)

(define (cbrt x)
  (define (square x)
    (* x x))
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (cube x)
    (* x x x))
  (define (good-enough? guess old-guess x)
    (and (< (abs (- (cube guess) x)) 0.001)
         (= guess old-guess)))
  (define (cbrt-iter guess old-guess x)
    (if (good-enough? guess old-guess x)
        guess
        (cbrt-iter (improve guess x) guess x)))
  (cbrt-iter 1.0 1.0 x))

; test
(cbrt 27) ; 3.0
