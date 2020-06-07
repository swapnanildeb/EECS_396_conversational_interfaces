(in-package :cl-user)

(setf *user-info-questions*
  '(
    ((:comment . "What is <person>'s favorite food?")
     (:lf (userInfo person123 Food item123)
          (isa person123 NUPerson))
     (:texts
      "What is Faraaz's favorite food?"
      "Can you tell me Nate's favorite food?"
      "What does Swapnanil like to eat"
      "What food does Annika like?"
      ))

    ((:comment . "What is <person>'s preferred method of travel?")
     (:lf (userInfo person123 WheeledTransportationDevice item123)
          (isa person123 NUPerson))
     (:texts
      "How does Faraaz travel?"
      "What is Faraaz's preferred method of travel?"
      "What does Nate use to travel?"
      "How does Swapnanil like to travel"
      "What method of travel does Annika like?"
      ))
  )
)