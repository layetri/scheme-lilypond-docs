#lang racket

(provide melody-modulate)


(define (find-modus melody) (
    ; it takes the last note in the melody
    last melody
 ))

(define (subst fsym tsym lst)
    (cond
        [(null? lst) lst]
        [(eq? (first lst) fsym) (cons tsym (subst fsym tsym (rest lst)))]
        [else (cons (first lst)(subst fsym tsym (rest lst)))]
    )
)

(define modes (make-hash))
(hash-set! modes "d" '(d e f g a b c))
(hash-set! modes "e" '(e f g a b c d))
(hash-set! modes "f" '(f g a b c d e))
(hash-set! modes "g" '(g a b c d e f))

; Modulate a given phrase to a given mode
; For example (phrase-modulate '(e f g f) e)

;(define current-mode (symbol->string (find-modus melody)))

(define (melody-modulate melody mode)
    (cond (not (equal? mode (symbol->string (find-modus melody)))
           (begin
               (subst '(bes) '(b) melody)

               (define scale (hash-ref modes (symbol->string (find-modus melody))))

               ; for each note in melody
               (for/list ([i (in-range (length melody))])
                     (begin
                         (define position (index-of scale (list-ref melody i)))
                         (list-ref (hash-ref modes mode) position)
                     )
                 )
           )
        )
    )
)