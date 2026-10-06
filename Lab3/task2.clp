(deftemplate starinfo 
   (slot Star)
   (slot Class)
   (slot Size)
   (slot Distance)
)

(deffacts stars
   (starinfo (Star Сиріус) (Class A) (Size 1) (Distance 8.8))
   (starinfo (Star Канопус) (Class F) (Size -3) (Distance 98))
   (starinfo (Star Арктур) (Class K) (Size 0) (Distance 36))
   (starinfo (Star Вега) (Class A) (Size 1) (Distance 26))
   (starinfo (Star Капелла) (Class G) (Size -1) (Distance 46))
   (starinfo (Star Рігель) (Class B) (Size -7) (Distance 880))
   (starinfo (Star Проціон) (Class F) (Size 3) (Distance 11))
   (starinfo (Star Бетельгейзе) (Class M) (Size -5) (Distance 490))
   (starinfo (Star Альтаїр) (Class A) (Size 2) (Distance 16))
   (starinfo (Star Альдебаран) (Class K) (Size -1) (Distance 68))
   (starinfo (Star Спіка) (Class B) (Size -3) (Distance 300))
   (starinfo (Star Антарес) (Class M) (Size -4) (Distance 250))
   (starinfo (Star Поллукс) (Class K) (Size 1) (Distance 35))
   (starinfo (Star Денеб) (Class A) (Size -7) (Distance 1630))
)

(deffacts search-query
   (target-class A)
   (target-size 1)

)


(defrule find-stars-by-class
   (declare (salience 30))
   (target-class ?search-class)
   
   
   (starinfo (Star ?name) (Class ?search-class))
   =>
   
   (printout t "Знайдено зорю: " ?name " (Клас: " ?search-class ")" crlf)
)



(defrule find-stars-by-size
   (declare (salience 20))
   (target-size ?search-size)
   
   
   (starinfo (Star ?name) (Size ?search-size))
   =>
   
   (printout t "Знайдено зорю: " ?name " (Розмір: " ?search-size ")" crlf)
)


(defrule find-stars-by-class-and-size
   (declare (salience 10))
   (target-class ?search-class)
   (target-size ?search-size)
   
   
   (starinfo (Star ?name) (Class ?search-class) (Size ?search-size) (Distance ?dist))
   =>
   
   (printout t "Знайдено зорю: " ?name " (Клас: " ?search-class ")"  " (Розмір: " ?search-size ")" " (Відстань від Землі: " ?dist ")" crlf)
)


