#|
QUDUDS AGBALAYA 101007487
-------------------------
Reference : COMP 3007 notes

|#



;Question 1
;-------------------------
(display " a. ")
(+  -1 2 -3 4 -5 6)
(newline)
(display " b. ")
(- 1 (+ (* (+ 6 7) (- 4 (* 6 2))) 12))
(newline)
(display " c. ")
(- -3 (* (+ 9 -2 12) (/ 2 (- 20 (* 2 5)))))
(newline)
(display " d. ")
(+ (* (+ 1/3 2/6) 4.2) 2.8)
(newline)

;----------------------------

;Question 2
;-----------------------
;a.)
#|reciprocal is a function for determining reciprocal of a number
 Input: Integer
 Output: fraction (1/x)
|#
(define(reciprocal x)
  ;if x is a number return 1/x else return #f
  (if (number? x)
      (/ 1 x) #f
      )
  )

;b.)
#|
 Input : integer
 Output: returns 3x + 3/x
|#
(define(f x) (+ (* 3 x) (/ 3 x)))

;c.)
#|
 Input: integer
 Output: returns x * 1/4
|#
(define (g x) (* x (reciprocal 4)))

;d.)
#|
 Input: two integers
 Output: number
|#
(define (h x y)
  #|if x is less than y return g(x)/f(y)
   if x is grater than y return f(x)/g(y)
   else return f(g(y))*(f(g(x))+2)-1
  |#
  (cond
    ((< x y) (/ (g x) (f y)))
    ((> x y) (/ (f x) (g y)))
    (else (* (f (g y)) (reciprocal (+(f (g x)) 2)
             ))
    )
  ))

;e.)
#|(h(* 2 2) (reciprocal (/ 1 4)))
(h 4 (reciprocal 1/4))
(* (f (g (reciprocal 1/4))) (reciprocal(+ (f (g 4)) 2)))
(* (+ (* 3 (g (reciprocal 1/4))) (/ 3 (g(reciprocal 1/4)))) (/ 1 (+ (f (g 4)) 2)))
(* (+ (* 3 (* (reciprocal 1/4) (reciprocal 4))) (/ 3 (* (reciprocal 1/4) (reciprocal 4)))) (/ 1 (+ (+ (* 3 (g 4)) (/ 3 (g 4))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (reciprocal 4))) (/ 3 (* 4 (reciprocal 4)))) 2)))
(* (+ (* 3 (* 4 1/4)) (/ 3(* 4 1/4))) (/ 1 (+ (+ (* 3  (* 4 (/ 1 4))) (/ 3 (* 4 (/ 1 4)))) 2)))
(* (+ (* 3 1) (/ 3 1)) (/ 1 (+ (+ (* 3  (* 4 1/4)) (/ 3 (* 4 1/4))) 2)))
(* (+ 3 3) (/ 1 (+ (+ (* 3  1) (/ 3 1)) 2)))
(* 6 (/ 1 (+ (+ 3 3) 2)))
(* 6 (/ 1 (+ 6 2)))
(* 6 (/ 1 8))
(* 6 1/8)
6/8
|#

;f.)
#|(h(* 2 2) (reciprocal (/ 1 4)))
(h 4 (reciprocal 1/4))
(* (f (g (reciprocal 1/4))) (reciprocal(+ (f (g 4)) 2)))
(* (+ (* 3 (g (reciprocal 1/4))) (/ 3 (g(reciprocal 1/4)))) (/ 1 (+ (f (g 4)) 2)))
(* (+ (* 3 (* (reciprocal 1/4) (reciprocal 4))) (/ 3 (* (reciprocal 1/4) (reciprocal 4)))) (/ 1 (+ (+ (* 3 (g 4)) (/ 3 (g 4))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (reciprocal 4))) (/ 3 (* 4 (reciprocal 4)))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (/ 1 4))) (/ 3 (* 4 (/ 1 4)))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 1/4)) (/ 3 (* 4 1/4))) 2)))
(* (+ (* 3 (* 4 1/4)) (/ 3 (* 4 1/4))) (/ 1 (+ (+ (* 3  1) (/ 3 1)) 2)))
(* (+ (* 3 1) (/ 3 1)) (/ 1 (+ (+ (* 3  1) (/ 3 1)) 2)))
(* (+ 3 3) (/ 1 (+ (+ 3 3) 2)))
(* (+ 3 3) (/ 1 (+ (+ 3 3) 2)))
(* (+ 3 3) (/ 1 (+ 6 2)))
(* (+ 3 3) (/ 1 8))
(* 6 1/8)
6/8
|#





;Question 3
;--------------------------------------------
;square is a funnction for determining the square of a number
;Inuput: integer
;Output: square of x
(define (square x) (* x x))

;quadratic is for determining the real roots of quadratic equation
;Input: three integer a, b, c
;output: real roots of the equation orfalse if there are no real roots
(define (quadratic a b c)
  ;disc is for determining the discriminant
  (define disc (- (square b) (* 4 a c)))
  ;if there are no real roots, return false else return roots of the equation
  (if (or (negative? disc) (= a 0)) #f (/ (+ (* b -1) (sqrt disc)) (* 2 a))))



;Question 4
;--------------------------------------------------------

;fib determines the nth term in a fibonnacci sequence
;Input: integer n
;output: nth term in a fibonnacci sequence
(define (fib n)
                ;formula for determining the nth term
		(- (* (/ 1 (sqrt 5)) (expt (/ (+ 1 (sqrt 5)) 2) n)) (* (/ 1 (sqrt 5)) (expt (/ (- 1 (sqrt 5)) 2) n))))

;b
;fibrec uses  recursion to determine the nth term in a fibonnacci sequence
;input: integer n
;ouput: integer. the nith term in the sequence
(define (fibrec n)
    (cond  ((= n 0) 0)
           ((= n 1) 1)
           (else (+ (fibrec (- n 1))
                    (fibrec (- n 2))))))
;c
;testfib determines if (fibn and fibrecn are within a precision value
;Input: integer n and precision value p
;Output: boolean 
(define (testfib n p)
  (define f1 (fib n))
  (define f2 (fibrec n))
  (display "(fib n)--")
  (display f1
           (current-output-port))
  (newline(current-output-port))
  (display "(fibrec n)--")
  (display f2
           (current-output-port))
  (newline(current-output-port))
  (define x (- f2 f1))
  (if (< p x) #f #t)
  )

#|
Quesion 5
-------------------------------------------
a . It goes into an infinte loop.
This is beacuse applicative order evaluates arguments before they are bound to a variable.
But since p is a procedure, it has no arguments and it isn't bound to any primitive operator, the function keeps calling itself.

b.)Returns 0. Normal order delays the evaluation of procedure arguments until they are needed. This gives 0 because argument (p) would
never be evaluated

|#

;Question 6
;----------------------------
#|
 (a-b 3 4)
 (+ 3 4)
 7

  (a-b 3 0)
  (- 3 0)
  3

  (a-b 3-1)
   (* 3 -1)
   (-3)

|#

;Document Testing
;-----------------
(display "(reciprocal 10) :")(newline)
(display " Expected : 1/10")(newline)
(display " Actual:")(reciprocal 10)(newline)

(display "(reciprocal 0.5)")(newline)
(display "Expected : 2")(newline)
(display "Actual: ")(reciprocal 0.5)(newline)

(display "(reciprocal #t)")(newline)
(display "Expected : #f")(newline)
(display "Actual: ")(reciprocal #t)(newline)

(display "(f 0.5)")(newline)
(display "Expected : 7.5 ")(newline)
(display "Actual: ")(f 0.5)(newline)

(display "(f 2)")(newline)
(display "Expected : 15/2")(newline)
(display "Actual: ")(f 2)(newline)

(display "(g 4)")(newline)
(display "Expected : 1")(newline)
(display "Actual: ")(g 4)(newline)

(display "(g 5)")(newline)
(display "Expected : 5/4")(newline)
(display "Actual: ")(g 5 )(newline)

(display "(h 2 1)")(newline)
(display "Expected : 30")(newline)
(display "Actual: ")(h 2 1)(newline)

(display "(h 1 2)")(newline)
(display "Expected : 1/30")(newline)
(display "Actual: ")(h 1 2)(newline)

(display "(h 1 1)")(newline)
(display "Expected : 51/59")(newline)
(display "Actual: ")(h 1 1)(newline)

(display "(quadratic 5 2 1)")(newline)
(display "Expected : false")(newline)
(display "Actual: ")(quadratic 5 2 1)(newline)

(display "(quadratic 5 6 1)")(newline)
(display "Expected : - 1/5")(newline)
(display "Actual: ")(quadratic 5 6 1)(newline)

(display "(quadratic 0 2 2)")(newline)
(display "Expected : false")(newline)
(display "Actual: ")(quadratic 0 2 2)(newline)

(display "(fib 0)")(newline)
(display "Expected : 0")(newline)
(display "Actual: ")(fib 0)(newline)

(display "(fib 1)")(newline)
(display "Expected : 1.0")(newline)
(display "Actual: ")(fib 1)(newline)

(display "(fib 10)")(newline)
(display "Expected : 55")(newline)
(display "Actual: ")(fib 10)(newline)

(display "(fibrec 0)")(newline)
(display "Expected : 0")(newline)
(display "Actual: ")(fibrec 0)(newline)

(display "(fibrec 1)")(newline)
(display "Expected : 1")(newline)
(display "Actual: ")(fibrec 1)(newline)

(display "(fibrec 10)")(newline)
(display "Expected : 55")(newline)
(display "Actual: ")(fibrec 10)(newline)

(display "(testfib 40 0.00000001)")(newline)
(display "Expected : #f")(newline)
(display "Actual: ")(testfib 40 0.000000001)(newline)

(display "(testfib 15 0)")(newline)
(display "Expected : #t")(newline)
(display "Actual: ")(testfib 15 0)(newline)

(display "(testfib 20 0)")(newline)
(display "Expected : #f")(newline)
(display "Actual: ")(testfib 20 0)(newline)


 







