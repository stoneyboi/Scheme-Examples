(define (comission gross)
    (if (<= gross 10000)  
       (* gross 0.1)
       (+ (* gross 0.1) (* 0.05 (- gross 10000)))
     )
)
(display (comission 15000))
(newline)

(define (quadrant x y)
    (cond 
         ((and (>= x 0) (>= y 0))  1)
         ((and (< x 0) (>= y 0))  2)
         ((and (< x 0) (< y 0))  3)
         (else 4)
    )
)
(display (quadrant -5 -6))
(newline)