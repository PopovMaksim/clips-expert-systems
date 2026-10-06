(deftemplate lamp (slot id) (slot status))

(deffacts lamps1 
(lamp (id 1) (status справний))
(lamp (id 2) (status справний))
(lamp (id 3) (status несправний))
(lamp (id 4) (status справний))
(lamp (id 5) (status несправний))
(lamp (id 6) (status справний))
(lamp (id 7) (status справний))
(lamp (id 8) (status справний))
(lamp (id 9) (status справний))
(lamp (id 10) (status справний))
)

(deffacts lamps2 
(lamp (id 1) (status справний))
(lamp (id 2) (status несправний))
(lamp (id 3) (status справний))
(lamp (id 4) (status справний))
(lamp (id 5) (status справний))
(lamp (id 6) (status справний))
(lamp (id 7) (status справний))
(lamp (id 8) (status несправний))
(lamp (id 9) (status несправний))
(lamp (id 10) (status справний))
)


(deffacts lamps3
(lamp (id 1) (status несправний))
(lamp (id 2) (status справний))
(lamp (id 3) (status несправний))
(lamp (id 4) (status справний))
(lamp (id 5) (status несправний))
(lamp (id 6) (status справний))
(lamp (id 7) (status справний))
(lamp (id 8) (status справний))
(lamp (id 9) (status справний))
(lamp (id 10) (status несправний))
)



(defrule check-three-broken-lamps
   ;; Перевіряємо, що попередження ще не виводилось
   (not (warning-issued))
   
   ;; Шукаємо три різні датчики з несправним станом
   ;; Використовуємо &~ щоб переконатися, що це не один і той самий датчик
   (lamp (id ?id1) (status несправний))
   (lamp (id ?id2&~?id1) (status несправний))
   (lamp (id ?id3&~?id1&~?id2) (status несправний))
   =>
   (printout t "Увага! Три або більше датчиків несправні!" crlf)
   
   ;; Створюємо факт-прапорець, який заблокує повторне виконання цього правила
   (assert (warning-issued))
)


