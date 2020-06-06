;;;; -*-  Mode: LISP; Syntax: Common-Lisp; Base: 10                          -*-
;;;; ---------------------------------------------------------------------------
;;;; File name: train-questions.lsp
;;;;    System: 
;;;;    Author: Crouse
;;;;   Created: November 26, 2018 12:16:12
;;;;   Purpose: 
;;;; ---------------------------------------------------------------------------
;;;;  $LastChangedDate: 2020-05-19 11:41:26 -0500 (Tue, 19 May 2020) $
;;;;  $LastChangedBy: hinrichs $
;;;; ---------------------------------------------------------------------------

(in-package :cl-user)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setf *full-question-set* 
  '(
     
        
    ((:comment . "Where is <person>'s office?")
     (:lf (and (officeLocation person123 office123)
               (psikiShowMap office123 office123))
          (isa person123 NUPerson)
          (isa office123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt) )
     (:texts 
      "Where is Professor Forbus's office?"
      "Where is Professor Forbus"
      "Where can I find Doctor Sood's office?"
      "Can you tell me where I can find Professor Forbus?"
      "Would you tell me where Professor Forbus' office is?"
      "Where does professor Forbus work?"
      "How can I find professor Forbus?"
      "How do I get to Professor Rubenstein's office?"
      "Is Jason Hartline's office in this building?"
      "Does Professor Horswill work here?"
      "Does Professor Horswill have an office here?"
      "Is Professor Tov's office here?"
      "Is Professor Tov's office in this building?"
      "Is Professor Tov's office on this floor?"
      ))
    
    ((:comment . "Asking the instructor of a course")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
     
      "Who is teaching cs 371?"
      "Who is teaching cs 348?"
      "Who is teaching cs 361?"
      "Who teaches cs 371?"
      "Who teaches cs 348?"
      "Who teaches cs 361?"
      "Do you know who teaches cs 100?"
      "Who is the professor for cs 371?"
      "Who is the professor for cs 348?"
      "Who is the professor for cs 361?"
      ))
    
    ((:comment . "Asking what someone teaches")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "What does Professor Horswill teach?"
      "What does Professor Sood teach?"
      "What does Willie Wilson teach?"
      "What class does Professor Horswill teach?"
      "What class does Professor Sood teach?"
      "What class does Willie Wilson teach?"
      ))
    
    ((:comment . "Who is teaching <course> this quarter?")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt) ))
     (:texts 
      "Who is teaching cs 371 this quarter?"
      "Who is teaching cs 348 this quarter?"
      "Who is teaching cs 361 this quarter?"
      "Who is the professor for cs 371 this quarter?"
      "Who is the professor for cs 348 this quarter?"
      "Who is the professor for cs 361 this quarter?"
      "Do you know the teacher for cs 325 this quarter?"
      "Show me the professor for cs 325 this quarter."
      "Tell me the name of the professor for cs 214."
      "Is professor Forbus teaching cs 214 this quarter?"
      "Do you know whether Professor Forbus is teaching cs 371 this quarter?"
      "Do you know whether Professor Forbus is the professor for cs 371 this quarter?"
      "Do you know if Professor Forbus is teaching cs 371 this quarter?"
      "Do you know if Professor Forbus is the professor for cs 371 this quarter?"
      ))
        
    ((:comment . "When is <course>?")
     (:lf (and (courseOffering course123 class123)
               (courseTimeString course123 time123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa course123 NUCourse)
          (isa class123 NUClass)
          (isa time123 StringObject))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "When is cs 371?"
      "When is cs 348?"
      "When is cs 361?"
      "What time is cs 371?"
      "What time is cs 348?"
      "What time is cs 361?"
      "What days are cs 214?"
      "Which days are cs 214?"
      "Do you know when cs 205 is?"
      "Does cs 205 meet today?"
      ))

    ((:comment . "What's <person>'s email?")
     (:lf (emailOf person123 address123)
          (isa person123 NUPerson)
          (isa address123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "What is Douglas Downey's email?"
      "How can I contact Douglas Downey?"
      "Do you know Douglas Downey's email?"
      "Do you have Douglas Downey's email?"
      "Can you tell me Douglas Downey's email?"
      "Show me Douglas Downey's email."
      "Has Douglas Downey listed his email?"
      "Which email of Douglas Downey's do you have?"
      "Is there an email of Douglas Downey available?"
      "Do you have Douglas Downey's email lying around?"
      "Do you happen to have Douglas Downey's email?"
      "What is Douglas Downey's contact information?"
      "Do you know Douglas Downey's contact information?"
      "Do you have Douglas Downey's contact information?"
      "Can you tell me Douglas Downey's contact information?"
      "Show me Douglas Downey's contact information."
      "Has Douglas Downey listed his contact information?"
      "Which contact info of Douglas Downey's do you have?"
      "Is there contact information for Douglas Downey available?"
      "Do you have Douglas Downey's contact information lying around?"
      "Do you happen to have Douglas Downey's contact information?"
      ))
    
    ;; Questions about rooms
    ((:comment . "Where is <room>?")
     (:lf (and (psikiSayThis "The location is displayed on the map.")
               (prettyString loc123 string123)
               (psikiShowMap string123 string123))
          (isa loc123 NUMuddPlace)
          (isa string123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "Where is room 3011?"
      "Can you tell me how to find room 3011?"
      "I'm looking for room 3011?"
      "Where can I find room 3011?"
      "How can I get to room 3011?"
      ))
    
    
    ((:comment . "What's <person>'s webpage address?")
     (:lf 
      (personalWebsite person123 webpage123)
      (isa person123 NUPerson)
      (isa webpage123 StringObject)
      )
     (:texts 
      "What is Professor Forbus's webpage address?"
      "What is Jason Hartline's website?"
      "What is Jason Wilson's homepage?"
      "Could you tell me Professor Forbus's webpage?"
      "Do you know Professor Forbus's webpage?"
      "Show me Professor Forbus's homepage."
      "Where can I get the information about Professor Forbus?"
      "Show me Professor Forbus's information."
      ))
    
    ((:comment . "Who is in the <academic group>?")
     (:lf 
      (nuGroupMember group123 person123)
      (isa person123 NUPerson)
      (isa group123 NUGroup)
      )
     (:texts 
      "Who is in algorithms?"
      "Which faculty are in algorithms?"
      "Who are the algorithms faculty?"
      "Which professors are in algorithms?"
      "Who works in algorithms?"
      "Which group is Jason Hartline in?"
      "Which students are in algorithms?"
      "Who does research in algorithms?"
      "Who works in algorithms?"
      "Who are the algorithms faculty?"
      "Does Jason Hartline do research in algorithms?"
      "Is Jason Hartline in algorithms?"
      "Is Jason Hartline a algorithms professor?"
      "Is Jason Hartline a algorithms faculty?"
      ))



    
;;;    ((:comment . "Are there any events [timespan]?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Are there any talks today?"
;;;             "What is today's talk about?"
;;;             "Are there any [topic] events [timespan]?"
;;;             "Is there [event] [timespan]?"
;;;             "Can you tell me if there is a talk today?"
;;;             "Can you tell me about today's talks?"
;;;             ))
    
;;;    ((:comment . "How long is <event>")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "How long is today's talk?"
;;;             "When will today's talk start?"
;;;             "When will today's talk end?"
;;;             "How long is today's seminar?"
;;;             "Will today's talk be an hour?"
;;;             "Are there any talks today that are less than an hour?"
;;;             "Is today's talk less than an hour?"
;;;             "Is today's talk only an hour?"
;;;             "Is today's talk more than 45 minutes?"
;;;             "Will today's talk be long?"
;;;             "Are there any talks today that are short?"
;;;             ))

    
;;;    ((:comment . "Is <course> offered [quarter]?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Does [person] teach [course] [quarter]?"
;;;             "Do you know if [course] is offered [quarter]?"
;;;             ))
    
;;;    ((:comment . "What events are today? (tomorrow)")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "What talks are today?"
;;;             "What is today's event schedule?"
;;;             "Are there any talks today?"
;;;             "What is going on today?"
;;;             "Are there any good talks today?"
;;;             "Are there any talks today that I should go to?"
;;;             "Are there any AI talks today?"
;;;             "Is there a Dean's Seminar Series talk today?"
;;;             "Is there an invited talk today?"
;;;             "Is there an EECS Seminar today?"
;;;             "Is there a CS Theory Seminar today?"
;;;             "Is there a CS Colloquium today?"
;;;             "Is there a CS+X Seminar today?"
;;;             ))

    
;;;    ((:comment . "When is <event>?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "How many talks are today?"
;;;             "How many talks are this week?"
;;;             "When is [CS BBQ]?"
;;;             "What is the [time] for [CS BBQ]?"
;;;             "Show me the time for [CS BBQ]?"
;;;             "When should I go to [event]?"
;;;             "Is [event] at [17:00 pm]?"
;;;             "Could/Can you tell me the time for [CS BBQ]?"
;;;             "*Does the [CS BBQ] start now?"
;;;             ))
    
;;;    ((:comment . "Where did [person]'s go to [schooling level]?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Where did [person] get [pronoun] [degree]?"
;;;             "Is [school] where [person] went to [schooling level]?"
;;;             "Is [person] an [alum] of [school]?"
;;;             "Did [person] go to [school]?"
;;;             "Did [person] go to [school] for [pronoun] [degree]?"
;;;             ))

;;;    ((:comment . "Where is <event>?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Where is [event] going to take place?"
;;;             "Is [event] in [building]?"
;;;             "Do you know where [event] is?"
;;;             "Where does [event, e.g. QRG lunch] meet?"
;;;             "Does [event] meet in the usual place?"
;;;             ))
   
    
;;;    ((:comment . "Who is <event> for?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Who is [event] for?"
;;;             "What is the purpose of this [event]?"
;;;             ))
    
;;;    ((:comment . "Who is hosting <event>?")
;;;     (:lf 
;;;      ;; TODO
;;;      )
;;;     (:texts "Who is hosting [event]?"
;;;             "Show me the host of [event]"
;;;             "Can you tell me the host of [event]?"
;;;             "Who should I talk with to get more information of the [event]?"
;;;             ))
    
    ))

(setf *min-question-set* 
  '(
        
    ((:comment . "Where is <person>'s office?")
     (:lf (and (officeLocation person123 office123)
               (psikiShowMap office123 office123))
          (isa person123 NUPerson)
          (isa office123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "Where is Professor Forbus's office?"
      "Where is Professor Forbus"
      ;"Where can I find Doctor Sood's office?"
      ;"Can you tell me where I can find Professor Forbus?"
      ;"Would you tell me where Professor Forbus' office is?"
      ;"Where does professor Forbus work?"
      "How can I find professor Forbus?"
      ;"How do I get to Professor Rubenstein's office?"
      ;"Is Jason Hartline's office in this building?"
      "Does Professor Horswill work here?"
      ;"Does Professor Horswill have an office here?"
      "Is Professor Tov's office here?"
      ;"Is Professor Tov's office in this building?"
      ;"Is Professor Tov's office on this floor?"
      ))
    
    ((:comment . "Asking the instructor of a course")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "Who is teaching cs 371?"
      ;"Who is teaching cs 348?"
      ;"Who is teaching cs 361?"
      ;"Who teaches cs 371?"
      ;"Who teaches cs 348?"
      ;"Who teaches cs 361?"
      ;"Do you know who teaches cs 100?"
      "Who is the professor for cs 371?"
      ;"Who is the professor for cs 348?"
      ;"Who is the professor for cs 361?"
      ))
    
    ((:comment . "Asking what someone teaches")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "What does Professor Horswill teach?"
      ;"What does Professor Sood teach?"
      ;"What does Willie Wilson teach?"
      ;"What class does Professor Horswill teach?"
      ;"What class does Professor Sood teach?"
      ;"What class does Willie Wilson teach?"
      ))
    
    ((:comment . "Who is teaching <course> this quarter?")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "Who is teaching cs 371 this quarter?"
      ;"Who is teaching cs 348 this quarter?"
      ;"Who is teaching cs 361 this quarter?"
      "Who is the professor for cs 371 this quarter?"
      ;"Who is the professor for cs 348 this quarter?"
      ;"Who is the professor for cs 361 this quarter?"
      ;"Do you know the teacher for cs 325 this quarter?"
      ;"Show me the professor for cs 325 this quarter."
      ;"Tell me the name of the professor for cs 214."
      ;"Is professor Forbus teaching cs 214 this quarter?"
      "Do you know whether Professor Forbus is teaching cs 371 this quarter?"
      ;"Do you know whether Professor Forbus is the professor for cs 371 this quarter?"
      ;"Do you know if Professor Forbus is teaching cs 371 this quarter?"
      ;"Do you know if Professor Forbus is the professor for cs 371 this quarter?"
      ))
        
    ((:comment . "When is <course>?")
     (:lf (and (courseOffering course123 class123)
               (courseTimeString course123 time123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa course123 NUCourse)
          (isa class123 NUClass)
          (isa time123 StringObject))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      ;"When is cs 371?"
      "When is cs 348?"
      ;"When is cs 361?"
      ;"What time is cs 371?"
      "What time is cs 348?"
      ;"What time is cs 361?"
      ;"What days are cs 214?"
      ;"Which days are cs 214?"
      ;"Do you know when cs 205 is?"
      ;"Does cs 205 meet today?"
      ))

    ((:comment . "What's <person>'s email?")
     (:lf (emailOf person123 address123)
          (isa person123 NUPerson)
          (isa address123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "What is Douglas Downey's email?"
      "How can I contact Douglas Downey?"
      ;"Do you know Douglas Downey's email?"
      ;"Do you have Douglas Downey's email?"
      ;"Can you tell me Douglas Downey's email?"
      "Show me Douglas Downey's email."
      "Has Douglas Downey listed his email?"
      ;"Which email of Douglas Downey's do you have?"
      ;"Is there an email of Douglas Downey available?"
      ;"Do you have Douglas Downey's email lying around?"
      ;"Do you happen to have Douglas Downey's email?"
      "What is Douglas Downey's contact information?"
      ;"Do you know Douglas Downey's contact information?"
      ;"Do you have Douglas Downey's contact information?"
      ;"Can you tell me Douglas Downey's contact information?"
      ;"Show me Douglas Downey's contact information."
      ;"Has Douglas Downey listed his contact information?"
      ;"Which contact info of Douglas Downey's do you have?"
      ;"Is there contact information for Douglas Downey available?"
      ;"Do you have Douglas Downey's contact information lying around?"
      ;"Do you happen to have Douglas Downey's contact information?"
      ))
    
    ;; Questions about rooms
    ((:comment . "Where is <room>?")
     (:lf (and (psikiSayThis "The location is displayed on the map.")
               (prettyString loc123 string123)
               (psikiShowMap string123 string123))
          (isa loc123 NUMuddPlace)
          (isa string123 StringObject))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "Where is room 3011?"
      "Can you tell me how to find room 3011?"
      "I'm looking for room 3011?"
      "Where can I find room 3011?"
      "How can I get to room 3011?"
      ))
    
    
    ((:comment . "What's <person>'s webpage address?")
     (:lf 
      (personalWebsite person123 webpage123)
      (isa person123 NUPerson)
      (isa webpage123 StringObject)
      )
     (:texts 
      "What is Professor Forbus's webpage address?"
      "What is Jason Hartline's website?"
      "What is Jason Wilson's homepage?"
      ;"Could you tell me Professor Forbus's webpage?"
      ;"Do you know Professor Forbus's webpage?"
      ;"Show me Professor Forbus's homepage."
      ;"Where can I get the information about Professor Forbus?"
      ;"Show me Professor Forbus's information."
      ))
    
    ((:comment . "Who is in the <academic group>?")
     (:lf 
      (nuGroupMember group123 person123)
      (isa person123 NUPerson)
      (isa group123 NUGroup)
      )
     (:texts 
      "Who is in algorithms?"
      ;"Which faculty are in algorithms?"
      ;"Who are the algorithms faculty?"
      ;"Which professors are in algorithms?"
      ;"Who works in algorithms?"
      ;"Which group is Jason Hartline in?"
      ;"Which students are in algorithms?"
      ;"Who does research in algorithms?"
      ;"Who works in algorithms?"
      ;"Who are the algorithms faculty?"
      "Does Jason Hartline do research in algorithms?"
      ;"Is Jason Hartline in algorithms?"
      ;"Is Jason Hartline a algorithms professor?"
      ;"Is Jason Hartline a algorithms faculty?"
      ))

    
    ))


(setq *geo-question-set* 
  '(
        
    ((:comment . "What is the area of <state>?")
     (:lf (areaOfRegion (TerritoryFn state123) (SquareMile num123))
          (isa state123 State-Geopolitical))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "What is the area of Indiana?"
      "How large is New Mexico?"
      ))
    
    ((:comment . "What states border <state>?")
     (:lf (bordersOn (TerritoryFn state123) (TerritoryFn state456))
          (isa state123 State-Geopolitical)
          (isa state456 State-Geopolitical))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "What states border Indiana?"
      ))
    
    ((:comment . "What are the rivers in <state>?")
     (:lf (flowsInRegions river123 state123)
          (isa state123 State-Geopolitical)
          (isa river123 River))
     (:settings (:use-gen-antec-isas NUPeopleDataMt))
     (:texts 
      "What are the rivers in Indiana?"
      ))

    
    ))


(setq *demo-question-set*
  '(
    
;;;    ((:comment . "What is the area of <state>?")
;;;     (:lf (areaOfRegion (TerritoryFn state123) (SquareMile num123))
;;;          (isa state123 State-Geopolitical))
;;;     (:texts 
;;;      "What is the area of Indiana?"
;;;      "How large is New Mexico?"
;;;      ))
    
;;;    ((:comment . "What states border <state>?")
;;;     (:ans "Ohio" "Michigan" "Kentucky" "Illinois")
;;;     (:texts 
;;;      "What states border states that border Michigan?"
;;;      ))
    
    ((:comment . "What states border <state>?")
     (:ans "Ohio" "Michigan" "Kentucky" "Illinois")
     (:texts 
      "What states border Indiana?"
      ))
    
    ((:comment . "What are the rivers in <state>?")
     (:ans "The Ohio River" "The Wabash River")
     (:texts 
      "What are the rivers in Ohio?"
      ))
    
    ((:comment . "Where is <person>'s office?")
     (:lf (and (officeLocation person123 office123)
               (psikiShowMap office123 office123))
          (isa person123 NUPerson)
          (isa office123 StringObject))
     (:texts 
      "Where is Professor Forbus's office?"
      "Where is Professor Forbus"
      ))
    
;;;    ((:comment . "Asking the instructor of a course")
;;;     (:lf (and (courseInstructor course123 person123)
;;;               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2018))))
;;;               (psikiSayThis (courseInstructor course123 person123)))
;;;          (isa person123 NUPerson) ; CSFaculty is too restrictive.
;;;          (isa course123 NUCourse))
;;;     (:texts 
;;;      "Who is teaching eecs 371 this quarter?"
;;;      "What does Bryan Pardo teach this quarter?"
;;;      ))
    
    ((:comment . "Asking the instructor of a course")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               (courseTerm course123 course-time123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:texts 
      "Who is teaching eecs 371?"
      "What does Bryan Pardo teach?"
      ))
    
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; End of Code