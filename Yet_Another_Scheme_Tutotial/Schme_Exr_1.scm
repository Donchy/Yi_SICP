;Hello variable
(define vhello 1)

;Hello function
(define fhello (lambda () "Hello world"))


;Hello with name
(define hello
	(lambda (name)
		(string-append "Hello" name "~~")))
		
;sum of three nums
(define sum3
	(lambda (a b c)
		(+ a b c)))
		
;var + 1
(define (var_add_1 num)
	(+ num 1))
	
;var - 1
(define (var_sub_1 num)
	(- num 1))
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;CALCU FLGHT DISTANCE;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;#1 define pi
(define pi (* 4 (atan 1.0)))


;#2 trans to rad
(define (Trans2Rad deg)
	(* (/ deg 180) pi))

;#3 calcu hori distance
(define (Hori_Distance speed time)
	(* speed time))
	
;#4 calcu flight time
(define (Flight_time speed)
	(/ (* speed 2) 9.8))
	
;#5 calcu flight distance
(define (Flight_Distance initspeed theta)
	(Hori_Distance (* initspeed (cos (Trans2Rad theta))) (Flight_time (* initspeed (sin (Trans2Rad theta))))))

