(define (length lst)
    (if (null? lst) 0 (+ 1 (length (cdr lst))))
)

(define (insert item x lst)
    (if (= x 0)
        (cons item lst)
        (cons (car lst) (insert item (- x 1) (cdr lst)))
    )
)

(define (reverse lst)
    (if (or (null? lst) (null? (cdr lst))) lst
        ; will finish monday
        
    
    )

)
