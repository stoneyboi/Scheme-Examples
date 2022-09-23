(define (log2 x)
    (if (= x 1)
         0 ; base case
         (+ 1 (log2 (truncate-quotient x 2))) ; recursive case
    )
)
(display (format "Log_2 of 32 is ~a\n" (log2 32)))
(display (format "Log_2 of 8 is ~a\n" (log2 8)))
(display (format "Log_2 of 75 is ~a\n" (log2 75)))

(define (count-up from to)
    (display (format "~a " from))
    (if (= from to) 
        (newline)
        (count-up (+ 1 from) to)
    )
)

(count-up 15 28)



(define (div-mod dividend divisor)
    (define (div-mod-helper dividend divisor quotient) 
        (if (< dividend divisor)
             (list quotient dividend)
             (div-mod-helper (- dividend divisor) divisor (+ 1 quotient))             
        )
    )
    (div-mod-helper dividend divisor 0)
)
(display (div-mod 17 5))
(newline)
