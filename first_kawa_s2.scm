(define (f_to_c f)
    (* (/ 5.0 9.0) (- f 32))
)
(display (f_to_c 212))
(newline)

(define (dist1 x1 y1 x2 y2)
    (letrec 
        ( (diffx (- x1 x2))
          (diffy (- y1 y2))
          (diffx_sq (* diffx diffx))
        )
        (sqrt (+ (* diffx diffx) (* diffy diffy)))
    )
)
(display (dist1 4 4 5 5))
(newline)

(define (square x)
    (* x x)
)

(define (dist2 x1 y1 x2 y2)
    (sqrt (+ (square (- x1 x2)) (square (- y1 y2))))
)
(display (dist2 0 0 3 4))
(newline)


