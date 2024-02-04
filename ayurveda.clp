/*
*
* Ayurveda is an ancient form of Indian ethnomedicine. One element of 
* Ayurveda is herbal medicines. Therefore, many Ayurvedic practitioners 
* often recommend homemeade treatments to alleviate the symptoms of a 
* wide range of ailments, ranging from the common cold to arthiritis.
*
* Ayurveda expert system:
* [1] Conducts a virtual check-up to determine the patient's ailment.
* [2] Asks a series of questions to determine available ingredients.
* [3] Recommends a homemade treatment based on given ingredients.
* 
* Ailment, ingredient, and treatment rules are located in separate files.
*
* Forward-chained treatment rules force backchaining of ailments and
* ingredients needed to determine the appropriate treatment for the patient.
* When an ailment or ingredient is needed, its "need-rule" asks the 
* corresponding question. The ailment must be determined first in order 
* to ensure the ingredient questions being asked are relevant.
*
* Based on the user response, the trait is asserted with either a "y" or "n" 
* for yes or no. An "unknown" response is considered to be a no.
*
* System addresses 50 common ailments with 114 possible treatments made from
* 75 ingredients commonly found in Indian households. Always assumes water is
* available to the patient.
*
* Expert: Linda Joseph (Ayurvedic practitioner in Kerala, India)
*
* @author Annmaria Antony
* @version November 20, 2022
*/

(clear)
(reset)

(defglobal ?*counter* = 0) ; counter to keep track of how many questions have been asked so far

/*
* Marks the following 11 alphabetized ailment categories as eligible for backward chaining. 
*/
(do-backward-chaining achesOrSoreness)
(do-backward-chaining eyesNoseEarMouthThroatSicknesses)
(do-backward-chaining generalHealth)
(do-backward-chaining hairSicknesses)
(do-backward-chaining insectBiteSicknesses)
(do-backward-chaining mentalSicknesses)
(do-backward-chaining respiratorySicknesses)
(do-backward-chaining skinSicknesses)
(do-backward-chaining stomachSicknesses)
(do-backward-chaining vials)
(do-backward-chaining weightConcerns)

/*
* Marks the following 50 alphabetized ailments as eligible for backward chaining. 
*/
(do-backward-chaining acidReflux)
(do-backward-chaining acne)
(do-backward-chaining anorexia)
(do-backward-chaining arthritis)
(do-backward-chaining asthma)
(do-backward-chaining blisters)
(do-backward-chaining bodyache)
(do-backward-chaining brittleHair)
(do-backward-chaining carpalTunnel)
(do-backward-chaining cold)
(do-backward-chaining cough)
(do-backward-chaining cramps)
(do-backward-chaining dandruff)
(do-backward-chaining dengueFever)
(do-backward-chaining digestiveProblems)
(do-backward-chaining dryEyes)
(do-backward-chaining dryHair)
(do-backward-chaining earInfection)
(do-backward-chaining eczema)
(do-backward-chaining fever)
(do-backward-chaining flu)
(do-backward-chaining foodPoisoning)
(do-backward-chaining hairFall)
(do-backward-chaining headache)
(do-backward-chaining highBloodPressure)
(do-backward-chaining highCholesterol)
(do-backward-chaining inflammation)
(do-backward-chaining itchyScalp)
(do-backward-chaining jointPain)
(do-backward-chaining lackOfAppetite)
(do-backward-chaining lice)
(do-backward-chaining lymeDisease)
(do-backward-chaining malaria)
(do-backward-chaining mentalStress)
(do-backward-chaining mosquitoBites)
(do-backward-chaining mouthSores)
(do-backward-chaining musclePain)
(do-backward-chaining obesity)
(do-backward-chaining oilyFace)
(do-backward-chaining pinkEye)
(do-backward-chaining pneumonia)
(do-backward-chaining sinusInfection)
(do-backward-chaining skinInfection)
(do-backward-chaining sleepLoss)
(do-backward-chaining soreThroat)
(do-backward-chaining spondylosis)
(do-backward-chaining stomachache)
(do-backward-chaining sunburn)
(do-backward-chaining thinningHair)
(do-backward-chaining toothache)

/*
* Marks the following 75 alphabetized ingredients as eligible for backward chaining. 
*/
(do-backward-chaining ajwain)
(do-backward-chaining almondOil)
(do-backward-chaining almonds)
(do-backward-chaining aloeVera)
(do-backward-chaining amla)
(do-backward-chaining arjuna)
(do-backward-chaining asafoetida)
(do-backward-chaining babyCoconuts)
(do-backward-chaining baheda)
(do-backward-chaining banana)
(do-backward-chaining blackPepper)
(do-backward-chaining blackSalt)
(do-backward-chaining brahmiOil)
(do-backward-chaining calamusRootOil)
(do-backward-chaining camphor)
(do-backward-chaining cardamom)
(do-backward-chaining carrot)
(do-backward-chaining castorOil)
(do-backward-chaining chamomile)
(do-backward-chaining cinnamon)
(do-backward-chaining cloveOil)
(do-backward-chaining cloves)
(do-backward-chaining coconutOil)
(do-backward-chaining coriander)
(do-backward-chaining cumin)
(do-backward-chaining cuminSeeds)
(do-backward-chaining eggWhites)
(do-backward-chaining essentialOil)
(do-backward-chaining fennel)
(do-backward-chaining fennelSeeds)
(do-backward-chaining fenugreekSeeds)
(do-backward-chaining garlic)
(do-backward-chaining ghee)
(do-backward-chaining giloy)
(do-backward-chaining ginger)
(do-backward-chaining gooseberryJuice)
(do-backward-chaining gotuKola)
(do-backward-chaining guduchi)
(do-backward-chaining guggulu)
(do-backward-chaining haritaki)
(do-backward-chaining hennaPowder)
(do-backward-chaining hibiscus)
(do-backward-chaining holyBasil)
(do-backward-chaining honey)
(do-backward-chaining indianFrankincense)
(do-backward-chaining indianHempJuice)
(do-backward-chaining jaggery)
(do-backward-chaining jasmineLeaves)
(do-backward-chaining jojobaOil)
(do-backward-chaining kalmegh)
(do-backward-chaining lemonJuice)
(do-backward-chaining licorice)
(do-backward-chaining marjoram)
(do-backward-chaining milk)
(do-backward-chaining mint)
(do-backward-chaining mishri)
(do-backward-chaining myrobalan)
(do-backward-chaining neem)
(do-backward-chaining neemOil)
(do-backward-chaining nutmeg)
(do-backward-chaining onionJuice)
(do-backward-chaining peppercorns)
(do-backward-chaining peppermint)
(do-backward-chaining pippali)
(do-backward-chaining rosewater)
(do-backward-chaining salt)
(do-backward-chaining sandalwood)
(do-backward-chaining sesameOil)
(do-backward-chaining shallots)
(do-backward-chaining shankhapushpi)
(do-backward-chaining tagara)
(do-backward-chaining turmericPowder)
(do-backward-chaining valerian)
(do-backward-chaining yellowBerriedNightshade)
(do-backward-chaining yogurt)

(batch "a/ailments.clp")       ; batches in the file with ailment "need-rules"
(batch "a/ingredients.clp")    ; batches in the file with ingredient "need-rules"
(batch "a/treatments.clp")     ; batches in the file with forward-chained treatment rules

/*
* Asks a question to the user. 
* If given an invalid response, then repeats the question until the response is valid.
* An invalid response is one that does not begin with the letters "y" "n" or "u".
*
* @param ?text the text of the question to be asked
* @return the coded version of the user response as y or n for yes or no/unknown
*/
(deffunction askQuestion(?text)
   (++ ?*counter*)

   (bind ?response (printQuestionAndReadResponse ?text))

   (while (= other ?response) then
      (printout t "It looks like you didn't provide a valid response. Try again:" crlf)
      (bind ?response (printQuestionAndReadResponse ?text))
   )
   
   (return ?response)
) ; (deffunction askQuestion(?text)

/**
* Prints the question to the terminal and reads the user response. 
* Calls a method to code the user response.
*
* @param ?text the question to be asked to the user
* @return the coded version of the user response
*/
(deffunction printQuestionAndReadResponse(?text)
   (printout t "Question #" ?*counter* ": ")
   (printout t ?text crlf)
   (bind ?response (read))
   (bind ?response (codeResponse ?response))
   (return ?response)
) ; (deffunction printQuestionAndReadResponse(?text)

/*
* Codes the user response as "y" or "n" if the user response began with the
* letters "y", "n", or "u" (irrespective of case). A response that begins with  
* the letter "u" (for unknown) is coded as "n".
*
* Codes the user response as "other" if the user inputted text that does not 
* start with "y", "n", or "u".
*
* @param ?input the user response
* @return the coded version of the user response
*/
(deffunction codeResponse (?input)
   (bind ?input (lowcase ?input))
   (bind ?firstLetter (sub-string 1 1 ?input))
   (bind ?status other)

   (if (= "y" ?firstLetter) then
      (bind ?status y)
   )

   (if (= "n" ?firstLetter) then
      (bind ?status n)
   )

   (if (= "u" ?firstLetter) then
      (bind ?status n)
   )

   (return ?status)
) ; (deffunction codeResponse (?input)

/*
* Halts the program when the check-up is deemed to be over.
*
* The check-up is over when:
* [1] There are no more questions to be asked because 
* no treatments could correspond to already asserted facts.
* [2] A treatment has been determined by the program.
* [3] The user has indicated that they are not yet ready to 
* begin in response to the welcome prompt.
*
* @param ?text the text to be printed to the terminal
*/
(deffunction checkUpOver(?text)
   (printout t ?text crlf)
   (halt)
   (return)
) ; (deffunction checkUpOver(?text)

/*
* Starts the check-up with a welcome message.
* Informs the user of directions for answering questions.
* Prompts the user to begin the check-up when ready.
*/
(defrule initiateCheckUp
   (declare (salience 1))
=>
   (printout t "Welcome!" crlf)
   (printout t "We're going to have a virtual check-up today." crlf)
   (printout t "If you're feeling unwell, I'll tell you about a homemade Ayurvedic treatment that can help." crlf)
   (printout t "" crlf)
   (printout t "During this process, respond with 'Y' for yes, 'N' for no, and 'U' for unsure." crlf)
   (printout t "I'm fairly flexible, so anything that starts with 'Y' 'N' or 'U' will be accepted." crlf)
   (printout t "However, if you enter anything else, I'll just ask you the question again." crlf)
   (printout t "When you're ready, hit 'Y'. Get well soon!" crlf)

   (bind ?input (read))
   (bind ?status (codeResponse ?input))

   (if (= y ?status) then
      (printout t "Great! Let's get started." crlf)
    else 
      (checkUpOver "That's okay! Give this another shot when you'd like.")
   )
) ; (defrule initiateCheckUp

/*
* Ends the check-up when no treatment is found based on patient's ailment and available ingredients.
*/
(defrule noTreatmentFound
   (declare (salience -1))
=>
   (printout t "So sorry! I don't have a treatment for you." crlf)
   (printout t "Get some rest, drink plenty of water, and stay healthy!" crlf)
) ; (defrule noTreatmentFound

(run)