(define (sqaure x) (* x x))

(define (cubert-iter guess prev-guess x)
  (if (good-enough? guess prev-guess x)
    guess
    (cubert-iter (improve guess x) guess x)))

; (define (improve guess x) (average guess (/ x guess)))
; (define (improve guess x) (/ (+ (/ x (sqaure guess)) (* 2 guess)) 3))
(define (improve guess x) (average3 (/ x (square guess)) guess guess))
(define (average3 x y z) (/ (+ x y z) 3))

; (define (average x y) (/ (+ x y) 2))

(define (good-enough? guess prev-guess x) (< (abs (- guess prev-guess)) (abs (* guess 0.001))))

(define (cubert x) (cubert-iter 1.0 0.0 x))

(cubert 100)
