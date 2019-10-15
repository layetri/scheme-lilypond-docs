#lang racket

(provide melody-modulate)

(define mel '(a b c d e c d))

(define (find-modus melody) (
                                ; it takes the last note in the melody
                                last melody
                                     ))

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
       (
           ; for each note in melody
           for/list ([i (in-range (length melody))])
                (begin
                    ;get note at current position
                    ;                    (define note (list-ref melody i))

                    (define scale (hash-ref modes (symbol->string (find-modus melody))))
                    (define position (index-of scale (list-ref melody i)))
                    (list-ref (hash-ref modes mode) position)

                    ;get position of note in current mode
                    ;                    (displayln (hash-ref modes current-mode))
                    )

                ; get position in current mode

                ; find note at position in new mode

                ; append to new melody
                )
            )
        )
    )