(define (square x)
  (* x x))

(define (addsquare x y z)
  (+ (square x)
     (square y)
     (square z)))

(define (min x y z)
  (cond ((and (<= x y) (<= x z)) x)
	((and (<= y z) (<= y x)) y)
	('t z)))

(define (addsquare-largers x y z)
  (- (addsquare x y z)
     (square (min x y z))))

;;; Examples
;; The followings should produce 13
(addsquare-largers 1 2 3)
(addsquare-largers 3 1 2)
(addsquare-largers 2 1 3)

;; The followings should produce 8
(addsquare-largers 1 2 2)
(addsquare-largers 2 1 2)
(addsquare-largers 2 2 1)

;; The followings should produce 5
(addsquare-largers 2 1 1)
(addsquare-largers 1 2 1)
(addsquare-largers 1 1 2)