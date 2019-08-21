;; Original sqrt
(define (sqrt x)
  (sqrt-iter 0 1.0 x))

;; Original sqrt-iter
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

;; Changed sqrt
(define (fp-sqrt x)
  (fp-sqrt-iter 0 1.0 x))

;; Changed sqrt-iter
(define (fp-sqrt-iter prev-guess guess x)
  (if (fp-good-enough? prev-guess guess)
      guess
      (fp-sqrt-iter guess (improve guess x) x)))

(define (improve guess x)
  (average (/ x guess) guess))

(define (average a b)
  (/ (+ a b) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (fp-good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) 0.001))

(sqrt 2.0)
;Value: 1.4142156862745097
(fp-sqrt 2.0)
;Value: 1.4142135623746899

;; 7^8
(sqrt 5764801)
;Value: 2401.0000000067175
(fp-sqrt 5764801)
;Value: 2401.

;; 0.02^2
(sqrt 0.0004)
;Value: .0354008825558513
(fp-sqrt 0.0004)
;Value: 2.0001426615330147e-2

