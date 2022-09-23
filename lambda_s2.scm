(define (my-map action lst)
    (if (null? lst)
        '()
        (cons (action (car lst)) (my-map action (cdr lst)))
    ))
(display (my-map (lambda (item) (* item item)) '(1 2 3 4 5 6)))

(define (my-select action lst)
    (cond 
      ((null? lst) '())
      ((action (car lst)) (cons (car lst) (my-select action (cdr lst))))
      (else (my-select action (cdr lst)))
    )
)
(display (my-select (lambda (item) (> item 0)) '(-2 3 -4 -5 6 7 8 9 -8 -10 12)))


(define (above-threshold threshold lst)  
    (my-select (lambda (item) (>= item threshold)) lst)

)
(display (above-threshold 10 '(1 11 8 9 19 21 22 9 87 6)))
(newline)

(define (for-each from to action)
    (if (<= from to)
        (begin 
        (action from)
        (for-each (+ 1 from) to action)
        )
    )
)

(for-each 10 20 (lambda (index)
    (display (format "~a " index))
))
(newline)


(define (reduce from to action partial)
    (if (<= from to)
        (reduce (+ 1 from) to action (action from partial) )
        partial
    )
)

(display "------\n")
(display (reduce 10 20 (lambda (index partial) 
    (append partial (list index))
)
'()
))
(newline)

(define (make-column size)
   (reduce 1 size (lambda (index partial)
       (cons -1 partial) 
   )
   '()
   )
)
(display (make-column 10))
(newline)

(define (make-board num_rows num_cols) 
    (reduce 1 num_cols (lambda (index partial)
        (cons (make-column num_rows) partial)
    )
    '()
    )
)
(display (make-board 5 8))
(newline)

(define matrix '((c1a c1b c1c c1d) (c2a c2b c2c c2d) (c3a c3b c3c c3d)))

(for-each 0 3 (lambda (row)
    (for-each 0 2 (lambda (col)
        (display (format "~a " (list-ref (list-ref matrix col) row)))
    ))
    (newline)
))

