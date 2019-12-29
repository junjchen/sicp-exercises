(define (sqaure x) (* x x))

; (define (sqrt-iter guess x)
(define (sqrt-iter guess prev-guess x)
  ; (if (good-enough? guess x)
  (if (good-enough? guess prev-guess)
    guess
    ; (sqrt-iter (improve guess x) x)))
    (sqrt-iter (improve guess x) guess x)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

; (define (good-enough? guess x) (< (abs (- (sqaure guess) x)) 0.001))
; (define (good-enough? guess prev-guess) (< (abs (- guess prev-guess)) (* prev-guess 0.001)))
; (define (good-enough? guess prev-guess) (= (- guess prev-guess) 0))
(define (good-enough? guess prev-guess) (= guess prev-guess))

(define (sqrt x) (sqrt-iter 1.0 0 x))

(sqrt 9000001)
