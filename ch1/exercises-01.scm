;; exercise from SICP ch1 p. 21

;; exercise 1.1
;; (omitted)

;; exercise 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; exercise 1.3
(define (sum-largest-squares a b c)
   (reduce + 0 (map (lambda (x) (* x x)) (drop (sort (list a b c) <) 1))))

;; exercise 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; result is a + |b| because operator is chosen as 'add' or 'subtract'
;; based on sign of b.  equivalent C code requires a fn pointer
;;
;; int add(a, b) { return a + b; }
;; int sub(a, b) { return a - b; }
;;
;; (b > 0 ? add : sub)(a, b);

;; exercise 1.5 
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

;; applicative: infinite loop
;; normal: 0
;;
;; basically testing whether the argument is evaluated before passed to `if`
;; need a level of function-call indirection becasue `if` is a special form
;; (if #t 0 (p)) => 0 in both applicative and normal orders

