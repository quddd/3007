;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
(#%require (only racket/base random))

(define (rps)

  (define (display-score n)
    (display "Your score is: ")
    (display n)(newline))

  (define (play uscore count)
    (display " Input 0 for Rock, 1 for Paper, 2 for Scissors. Three rounds per game")(newline)
    (define user-input (read))
    (define comp-input (random 3))
    (display "Computer chose:")
    (display comp-input)(newline)
;Check who beats who
;-----------------------
    (cond ((and (= user-input 0) (= comp-input 2))(+ uscore 1))
          ((and (= user-input 1) (= comp-input 0))(+ uscore 1))
          ((and (= user-input 2) (= comp-input 1))(+ uscore 1))
          ((= user-input comp-input)(+ uscore 0))
          (else (- uscore 1)))
    (display-score uscore)(newline)
    
    (if (< count 3)
        (play uscore (+ count 1))
        (display-score uscore)))

  (display "-----------------------------------------------")(newline)
  (display "------------- Rock, Paper, Scissors------------")(newline)
  (define user-score 0)
  (display-score user-score)
  (play user-score 1)
  )