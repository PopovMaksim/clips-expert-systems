(deftemplate Parent 
   (slot status (allowed-values mother father)) 
   (slot kid) 
   (slot parent)
)

(deftemplate Parents 
   (slot kid)
   (slot father) 
   (slot mother)
)

(deftemplate Status-family 
   (slot name)
   (slot status (allowed-values mother father son daughter)) 
)

(deftemplate Gender 
   (slot name)
   (slot gender (allowed-values male female)) 
)


(deffunction add-parent (?parent-name ?kid-name ?status-val)
   (assert (Parent (parent ?parent-name) (kid ?kid-name) (status ?status-val)))
)

(deffunction add-parents (?kid-name ?father-name ?mother-name)
   (assert (Parents (kid ?kid-name) (father ?father-name) (mother ?mother-name)))
)


(deffunction add-status (?person-name ?status-val)
   (assert (Status-family (name ?person-name) (status ?status-val)))
)


(deffunction add-gender (?person-name ?gender-val)
   (assert (Gender (name ?person-name) (gender ?gender-val)))
)

;; ==========================================
;; Головна функція ініціалізації
;; ==========================================
(deffunction init-family-facts ()
   

   (add-parent Tom John father)
   (add-parent Susan John mother)
   

   (add-parents John Tom Susan)
   

   (add-status Tom father)
   (add-status Susan mother)
   (add-status John son)
   

   (add-gender Tom male)
   (add-gender Susan female)
   (add-gender John male)
   
   (printout t "Всі 9 фактів успішно додано до бази знань!" crlf)
)