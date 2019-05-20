;;;Qudus Agbalaya
;;;101007487

(define (make-list)
  (define L '())

  ;size of the list
  (define (size)
    ;to get the size of the list using uteration
    (define (sizeL a count)
      (if (null? a)
          count
          (sizeL (cdr a) (+ 1 count)))
      )
    (sizeL L 0))
  
  (define (get i);get an element at the given index i
    (define (get-iter a count)
      (if (= count 0)
          (car a)
          (get-iter (cdr a) (- count 1))))
    (get-iter L i))

  ;set and element x at index i
  (define (set i x)
    (define (set-it count x j a b)
      (if (eq? count j)
          (set! L (append(append b (cons x '())) (cdr a)))
          (set-it (+ 1 count) x j (cdr a) (append b (list (car a))))))
    
    (if (= 0 i)
        (set! L (cons x (cdr L)))
        (set-it 0 x i L '())))

;;;;;;;add and element x at index i
    (define (add i x)
      (define (add-it a b n i x)
        (if (= i n)
            (set! L (append (append b (cons x'())) a))
            (add-it (cdr a) (append b (list (car a))) (+ 1 n) i x)))
      
      (cond ((null? L) (set! L (cons x '())))
            (else
             (cond ((= i (size)) (set! L (append L (list x))))
                   ((= i 0) (set! L (cons x L)))
                   (else (add-it L '() 0 i x))))))

  ;;;remove element at i
    (define (remove i)
      (define (remove-it count i a b)
        (cond ((= count i) (set! L (append b (cdr a))))
              (else (remove-it (+ count 1) i (cdr a) (append b (list (car a)))))))     
      (if (= i 0)
          (set! L (cdr L))
          (remove-it 0 i L '())))
    
    (define (print)
      (display L)(newLine))
  
  ;;dispatch the method needed
    (define (dispatch method)
    (cond ((eq? method 'size) size)
          ((eq? method 'set) set)
          ((eq? method 'remove) remove)
          ((eq? method 'add) add) 
          ((eq? method 'get) get)
          ((eq? method 'print) print)         
      (else (lambda() (display "Unknown Request: ")(display method)(newline)))))
  dispatch)

(display "-----------------------TESTING---------------------------")
(define L1 (make-list))
(define L2 (make-list))
(display "L1: ")((L1 'print)) ; prints => L1: ()
(display "L2: ")((L2 'print)) ; prints => L2: ()
(display "((L1 'add) 0 'a))")(newline)
((L1 'add) 0 'a)
(display "((L1 'add) 1 'b)")(newline)
((L1 'add) 1 'b)
(display "((L1 'add) 2 'c)")(newline)
((L1 'add) 2 'c)
(display "((L1 'add) 3 'd)")(newline)
((L1 'add) 3 'd)
(display "L1: ")((L1 'print)) ; prints => L1: (a b c d)
((L2 'add) 0 ((L1 'get) 2))
((L1 'set) 2 'x)
((L2 'add) 1 'z)
((L1 'remove) 1)
((L2 'add) 1 'y)
((L1 'add) 0 1)
(display "L1: ")((L1 'print)) ; prints => L1: (1 a x d)
(display "L2: ")((L2 'print)) ; prints => L2: (c y z)
(display "size of L1: ")(display ((L1 'size)))(newline)
; prints => size of L1: 4
(display "size of L2: ")(display ((L2 'size)))(newline)  ; prints => size of L2: 3

    

    
    
          
            
      
        

  