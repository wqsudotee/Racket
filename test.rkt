#!/usr/bin/racket
#lang racket

(require rackunit)
(define (plus x y) (+ x y))
(check-equal? (plus 10 14) 24) ; valid
(check-equal? (plus 10 10) 24) ; invalid, actual result is 20
(check-eq? 'a 'a) ; symbols are guaranteed to be `eq?`
(check-not-eq? "a" (format "~a" 'a)) ; strings are not
(check-equal? "a" (format "~a" 'a)) ; strings can be `equal?`
(check-not-equal? "a" 25) ; but not with numbers
(check-true (symbol? 'a))
(check-false (symbol? "a"))
(check-true (number? 42))
