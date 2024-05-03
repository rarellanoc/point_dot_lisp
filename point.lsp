;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; First, I set up 1 layer I need.
; This has to be processed only at once when this file is loaded.
(Command "layer" "new" "point_layer" "color" "red" "point_layer" "")

; my debugging utility
; (defun c:rr () (load "test"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; one simple shape

(defun point_rick (xpos ypos)
	(command "layer" "set" "point_layer" "")
	(command "point" (list xpos ypos))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; a demo
(defun c:demo_rick ()
   (command "cmdecho" 0)
   (command "ucsicon" "off")
   (command "vpoint" (list 0 0 1))
   (command "zoom" "window" (list -4 -4) (list 16 32))
   (command "regen")
   (point_rick 10 10)
   (command "regen")
   (command "comdecho" 1)
) 
