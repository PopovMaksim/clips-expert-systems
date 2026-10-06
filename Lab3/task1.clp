(defrule father-of-john-is-tom 
 => 
(printout t "The father of John is Tom." crlf))

(defrule mother-of-john-is-susan 
 => 
(printout t "The mother of John is Susan." crlf))

(defrule parents-of-john 
 => 
(printout t "The parents of John are Tom and Susan.
" crlf))

(defrule tom-is-a-father 
 => 
(printout t "Tom is a father." crlf))

(defrule susan-is-a-mother 
 => 
(printout t "Susan is a mother." crlf))

(defrule john-is-a-son 
 => 
(printout t "John is a son." crlf))

(defrule tom-is-a-male 
 => 
(printout t "Tom is a male." crlf))

(defrule susan-is-a-female 
 => 
(printout t "Susan is a female." crlf))

(defrule John-is-a-male
 => 
(printout t "John is a male." crlf))