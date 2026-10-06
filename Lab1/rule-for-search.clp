(defrule people-20-years

(person (name ?name) (age 20) (gender ?gender))

=> 
(printout t "Name: " ?name " Age: " 20 " Gender: " ?gender crlf)
)


(defrule people-John

(person (name John) (age ?age) (gender ?gender))

=>
(printout t "Name: " John " Age: " ?age " Gender: " ?gender crlf)
)