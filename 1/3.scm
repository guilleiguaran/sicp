(define (square x)
 (* x x))

(define (greater x y)
 (if (> x y) x y))

(define (lesser x y)
 (if (< x y) x y))

(define (sum-of-greatest-squares x y z)
 (+ (square (greater x y))
  (square (greater (lesser x y) z))))
