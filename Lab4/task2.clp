(deftemplate starinfo 
   (slot Star)
   (slot Class)
   (slot Size)
   (slot Distance)
)


;; Функція для додавання зорі
(deffunction add-star (?name ?class ?size ?dist)
   (assert (starinfo (Star ?name) (Class ?class) (Size ?size) (Distance ?dist)))
)


;; Ініціалізації бази знань
(deffunction init-stars ()
   (add-star Сиріус A 1 8.8)
   (add-star Канопус F -3 98)
   (add-star Арктур K 0 36)
   (add-star Вега A 1 26)
   (add-star Капелла G -1 46)
   (add-star Рігель B -7 880)
   (add-star Проціон F 3 11)
   (add-star Бетельгейзе M -5 490)
   (add-star Альтаїр A 2 16)
   (add-star Альдебаран K -1 68)
   (add-star Спіка B -3 300)
   (add-star Антарес M -4 250)
   (add-star Поллукс K 1 35)
   (add-star Денеб A -7 1630)
   (printout t "Базу даних зір успішно завантажено!" crlf)
)


;; Функція для пошуку за параметрами
(deffunction search-stars (?class ?size)
   ;; Додаємо факти-критерії
   (assert (target-class ?class))
   (assert (target-size ?size))
   

   (run)
)


;; Правила пошуку
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