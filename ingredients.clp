/*
* Ayurveda expert system.
*
* Rules to determine ingredients available to the patient.
* Rules are named after their respective ingredients.
*
* User's response is coded as "y" "n" or "other" depending on their input.
* Coded version of the user's response (either "y" or "n") is asserted.
*
* (condition         y)    : indicates that the user must have indicated this condition to be true
* (not (condition    y))   : indicates that the user must not have indicated this condition to be true
*
* @author Annmaria Antony
* @version November 20, 2022
*/

(defrule honey
   (ailmentIdentified        y)
   (not (honey               ?pattern))
   (need-honey               ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have honey?"))
   (assert (honey            ?pattern))
) ; (defrule honey

(defrule coconutOil
   (ailmentIdentified        y)
   (not (coconutOil          ?pattern))
   (need-coconutOil          ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have coconut oil?"))
   (assert (coconutOil       ?pattern))
) ; (defrule coconutOil

(defrule amla
   (ailmentIdentified   y)
   (not (amla           ?pattern))
   (need-amla           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have amla?"))
   (assert (amla        ?pattern))
) ; (defrule amla

(defrule jasmineLeaves
   (ailmentIdentified            y)
   (not (jasmineLeaves           ?pattern))
   (need-jasmineLeaves           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have jasmine leaves?"))
   (assert (jasmineLeaves        ?pattern))
) ; (defrule jasmineLeaves

(defrule turmericPowder
   (ailmentIdentified             y)
   (not (turmericPowder           ?pattern))
   (need-turmericPowder           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have turmeric powder?"))
   (assert (turmericPowder        ?pattern))
) ; (defrule turmericPowder

(defrule ghee
   (ailmentIdentified   y)
   (not (ghee           ?pattern))
   (need-ghee           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have ghee?"))
   (assert (ghee        ?pattern))
) ; (defrule ghee

(defrule baheda
   (ailmentIdentified     y)
   (not (baheda           ?pattern))
   (need-baheda           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have baheda?"))
   (assert (baheda        ?pattern))
) ; (defrule baheda

(defrule haritaki
   (ailmentIdentified       y)
   (not (haritaki           ?pattern))
   (need-haritaki           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have haritaki?"))
   (assert (haritaki        ?pattern))
) ; (defrule haritaki

(defrule coriander
   (ailmentIdentified        y)
   (not (coriander           ?pattern))
   (need-coriander           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have coriander?"))
   (assert (coriander        ?pattern))
) ; (defrule coriander

(defrule fennel
   (ailmentIdentified     y)
   (not (fennel           ?pattern))
   (need-fennel           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have fennel?"))
   (assert (fennel        ?pattern))
) ; (defrule fennel

(defrule cumin
   (ailmentIdentified    y)
   (not (cumin           ?pattern))
   (need-cumin           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cumin?"))
   (assert (cumin        ?pattern))
) ; (defrule cumin

(defrule mishri
   (ailmentIdentified     y)
   (not (mishri           ?pattern))
   (need-mishri           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have mishri?"))
   (assert (mishri        ?pattern))
) ; (defrule mishri

(defrule camphor
   (ailmentIdentified      y)
   (not (camphor           ?pattern))
   (need-camphor           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have camphor?"))
   (assert (camphor        ?pattern))
) ; (defrule camphor

(defrule aloeVera
   (ailmentIdentified       y)
   (not (aloeVera           ?pattern))
   (need-aloeVera           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have aloe vera?"))
   (assert (aloeVera        ?pattern))
) ; (defrule aloeVera

(defrule holyBasil
   (ailmentIdentified        y)
   (not (holyBasil           ?pattern))
   (need-holyBasil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have holy basil?"))
   (assert (holyBasil        ?pattern))
) ; (defrule holyBasil

(defrule hibiscus
   (ailmentIdentified       y)
   (not (hibiscus           ?pattern))
   (need-hibiscus           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have hibiscus flowers?"))
   (assert (hibiscus        ?pattern))
) ; (defrule hibiscus

(defrule shallots
   (ailmentIdentified       y)
   (not (shallots           ?pattern))
   (need-shallots           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have shallots?"))
   (assert (shallots        ?pattern))
) ; (defrule shallots

(defrule hennaPowder
   (ailmentIdentified          y)
   (not (hennaPowder           ?pattern))
   (need-hennaPowder           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have henna powder?"))
   (assert (hennaPowder        ?pattern))
) ; (defrule hennaPowder

(defrule eggWhites
   (ailmentIdentified        y)
   (not (eggWhites           ?pattern))
   (need-eggWhites           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have egg whites?"))
   (assert (eggWhites        ?pattern))
) ; (defrule eggWhites

(defrule babyCoconuts
   (ailmentIdentified           y)
   (not (babyCoconuts           ?pattern))
   (need-babyCoconuts           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have baby coconuts?"))
   (assert (babyCoconuts        ?pattern))
) ; (defrule babyCoconuts

(defrule blackPepper
   (ailmentIdentified          y)
   (not (blackPepper           ?pattern))
   (need-blackPepper           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have black pepper?"))
   (assert (blackPepper        ?pattern))
) ; (defrule blackPepper

(defrule ginger
   (ailmentIdentified     y)
   (not (ginger           ?pattern))
   (need-ginger           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have ginger?"))
   (assert (ginger        ?pattern))
) ; (defrule ginger

(defrule garlic
   (ailmentIdentified     y)
   (not (garlic           ?pattern))
   (need-garlic           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have garlic?"))
   (assert (garlic        ?pattern))
) ; (defrule garlic

(defrule calamusRootOil
   (ailmentIdentified             y)
   (not (calamusRootOil           ?pattern))
   (need-calamusRootOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have calamus root oil?"))
   (assert (calamusRootOil        ?pattern))
) ; (defrule calamusRootOil

(defrule sesameOil
   (ailmentIdentified        y)
   (not (sesameOil           ?pattern))
   (need-sesameOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have sesame oil?"))
   (assert (sesameOil        ?pattern))
) ; (defrule sesameOil

(defrule brahmiOil
   (ailmentIdentified        y)
   (not (brahmiOil           ?pattern))
   (need-brahmiOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have brahmi oil?"))
   (assert (brahmiOil        ?pattern))
) ; (defrule brahmiOil

(defrule cinnamon
   (ailmentIdentified       y)
   (not (cinnamon           ?pattern))
   (need-cinnamon           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cinnamon?"))
   (assert (cinnamon        ?pattern))
) ; (defrule cinnamon

(defrule cloves
   (ailmentIdentified     y)
   (not (cloves           ?pattern))
   (need-cloves           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cloves?"))
   (assert (cloves        ?pattern))
) ; (defrule cloves

(defrule cloveOil
   (ailmentIdentified       y)
   (not (cloveOil           ?pattern))
   (need-cloveOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have clove oil?"))
   (assert (cloveOil        ?pattern))
) ; (defrule cloveOil

(defrule salt
   (ailmentIdentified   y)
   (not (salt           ?pattern))
   (need-salt           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have salt?"))
   (assert (salt        ?pattern))
) ; (defrule salt

(defrule nutmeg
   (ailmentIdentified     y)
   (not (nutmeg           ?pattern))
   (need-nutmeg           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have nutmeg?"))
   (assert (nutmeg        ?pattern))
) ; (defrule nutmeg

(defrule lemonJuice
   (ailmentIdentified         y)
   (not (lemonJuice           ?pattern))
   (need-lemonJuice           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have lemon juice?"))
   (assert (lemonJuice        ?pattern))
) ; (defrule lemonJuice

(defrule asafoetida
   (ailmentIdentified         y)
   (not (asafoetida           ?pattern))
   (need-asafoetida           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have asafoetida?"))
   (assert (asafoetida        ?pattern))
) ; (defrule asafoetida

(defrule jaggery
   (ailmentIdentified      y)
   (not (jaggery           ?pattern))
   (need-jaggery           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have jaggery?"))
   (assert (jaggery        ?pattern))
) ; (defrule jaggery

(defrule fenugreekSeeds
   (ailmentIdentified             y)
   (not (fenugreekSeeds           ?pattern))
   (need-fenugreekSeeds           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have fenugreek seeds?"))
   (assert (fenugreekSeeds        ?pattern))
) ; (defrule fenugreekSeeds

(defrule cuminSeeds
   (ailmentIdentified         y)
   (not (cuminSeeds           ?pattern))
   (need-cuminSeeds           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cumin seeds?"))
   (assert (cuminSeeds        ?pattern))
) ; (defrule cuminSeeds

(defrule yogurt
   (ailmentIdentified     y)
   (not (yogurt           ?pattern))
   (need-yogurt           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have yogurt?"))
   (assert (yogurt        ?pattern))
) ; (defrule yogurt

(defrule myrobalan
   (ailmentIdentified        y)
   (not (myrobalan           ?pattern))
   (need-myrobalan           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have myrobalan?"))
   (assert (myrobalan        ?pattern))
) ; (defrule myrobalan

(defrule castorOil
   (ailmentIdentified        y)
   (not (castorOil           ?pattern))
   (need-castorOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have castor oil?"))
   (assert (castorOil        ?pattern))
) ; (defrule castorOil

(defrule gooseberryJuice
   (ailmentIdentified              y)
   (not (gooseberryJuice           ?pattern))
   (need-gooseberryJuice           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have gooseberry juice?"))
   (assert (gooseberryJuice        ?pattern))
) ; (defrule gooseberryJuice

(defrule pippali
   (ailmentIdentified      y)
   (not (pippali           ?pattern))
   (need-pippali           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have pippali?"))
   (assert (pippali        ?pattern))
) ; (defrule pippali

(defrule peppermint
   (ailmentIdentified         y)
   (not (peppermint           ?pattern))
   (need-peppermint           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have peppermint?"))
   (assert (peppermint        ?pattern))
) ; (defrule peppermint

(defrule fennelSeeds
   (ailmentIdentified          y)
   (not (fennelSeeds           ?pattern))
   (need-fennelSeeds           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have fennel seeds?"))
   (assert (fennelSeeds        ?pattern))
) ; (defrule fennelSeeds

(defrule neem
   (ailmentIdentified   y)
   (not (neem           ?pattern))
   (need-neem           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have neem?"))
   (assert (neem        ?pattern))
) ; (defrule neem

(defrule sandalwood
   (ailmentIdentified         y)
   (not (sandalwood           ?pattern))
   (need-sandalwood           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have sandalwood?"))
   (assert (sandalwood        ?pattern))
) ; (defrule sandalwood

(defrule cardamom
   (ailmentIdentified       y)
   (not (cardamom           ?pattern))
   (need-cardamom           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cardamom?"))
   (assert (cardamom        ?pattern))
) ; (defrule cardamom

(defrule milk
   (ailmentIdentified   y)
   (not (milk           ?pattern))
   (need-milk           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have milk?"))
   (assert (milk        ?pattern))
); (defrule milk

(defrule marjoram
   (ailmentIdentified       y)
   (not (marjoram           ?pattern))
   (need-marjoram           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have marjoram?"))
   (assert (marjoram        ?pattern))
) ; (defrule marjoram

(defrule essentialOil
   (ailmentIdentified           y)
   (not (essentialOil           ?pattern))
   (need-essentialOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have essential oil?"))
   (assert (essentialOil        ?pattern))
); (defrule essentialOil

(defrule licorice
   (ailmentIdentified       y)
   (not (licorice           ?pattern))
   (need-licorice           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have licorice?"))
   (assert (licorice        ?pattern))
) ; (defrule licorice

(defrule gotuKola
   (ailmentIdentified       y)
   (not (gotuKola           ?pattern))
   (need-gotuKola           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have gotu kola?"))
   (assert (gotuKola        ?pattern))
) ; (defrule gotuKola

(defrule shankhapushpi
   (ailmentIdentified            y)
   (not (shankhapushpi           ?pattern))
   (need-shankhapushpi           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have shankhapushpi?"))
   (assert (shankhapushpi        ?pattern))
) ; (defrule shankhapushpi

(defrule almonds
   (ailmentIdentified      y)
   (not (almonds           ?pattern))
   (need-almonds           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have almonds?"))
   (assert (almonds        ?pattern))
) ; (defrule almonds

(defrule valerian
   (ailmentIdentified       y)
   (not (valerian           ?pattern))
   (need-valerian           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have valerian?"))
   (assert (valerian        ?pattern))
) ; (defrule valerian

(defrule chamomile
   (ailmentIdentified        y)
   (not (chamomile           ?pattern))
   (need-chamomile           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have chamomile?"))
   (assert (chamomile        ?pattern))
) ; (defrule chamomile

(defrule tagara
   (ailmentIdentified     y)
   (not (tagara           ?pattern))
   (need-tagara           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have tagara?"))
   (assert (tagara        ?pattern))
) ; (defrule tagara

(defrule carrot
   (ailmentIdentified        y)
   (not (carrot              ?pattern))
   (need-carrot              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have carrots?"))
   (assert (carrot           ?pattern))
) ; (defrule carrot

(defrule rosewater
   (ailmentIdentified        y)
   (not (rosewater           ?pattern))
   (need-rosewater           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have rose water?"))
   (assert (rosewater        ?pattern))
) ; (defrule rosewater

(defrule peppercorns
   (ailmentIdentified        y)
   (not (peppercorns         ?pattern))
   (need-peppercorns         ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have peppercorns?"))
   (assert (peppercorns      ?pattern))
) ; (defrule peppercorns

(defrule blackSalt
   (ailmentIdentified        y)
   (not (blackSalt           ?pattern))
   (need-blackSalt           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have black salt?"))
   (assert (blackSalt        ?pattern))
) ; (defrule blackSalt

(defrule mint
   (ailmentIdentified        y)
   (not (mint                ?pattern))
   (need-mint                ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have mint?"))
   (assert (mint             ?pattern))
) ; (defrule mint

(defrule banana
   (ailmentIdentified     y)
   (not (banana           ?pattern))
   (need-banana           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have bananas?"))
   (assert (banana        ?pattern))
) ; (defrule banana

(defrule yellowBerriedNightshade
   (ailmentIdentified              y)
   (not (yellowBerriedNightshade   ?pattern))
   (need-yellowBerriedNightshade   ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have yellow-berried nightshades?"))
   (assert (yellowBerriedNightshade ?pattern))
) ; (defrule yellowBerriedNightshade

(defrule ajwain
   (ailmentIdentified        y)
   (not (ajwain              ?pattern))
   (need-ajwain              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have ajwain?"))
   (assert (ajwain           ?pattern))
) ; (defrule ajwain

(defrule neemOil
   (ailmentIdentified      y)
   (not (neemOil           ?pattern))
   (need-neemOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have neem oil?"))
   (assert (neemOil        ?pattern))
) ; (defrule neemOil

(defrule jojobaOil
   (ailmentIdentified        y)
   (not (jojobaOil           ?pattern))
   (need-jojobaOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have jojoba oil?"))
   (assert (jojobaOil        ?pattern))
) ; (defrule jojobaOil

(defrule guggulu
   (ailmentIdentified      y)
   (not (guggulu           ?pattern))
   (need-guggulu           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have guggulu?"))
   (assert (guggulu        ?pattern))
) ; (defrule guggulu

(defrule arjuna
   (ailmentIdentified     y)
   (not (arjuna           ?pattern))
   (need-arjuna           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have arjuna?"))
   (assert (arjuna        ?pattern))
) ; (defrule arjuna

(defrule indianFrankincense
   (ailmentIdentified          y)
   (not (indianFrankincense    ?pattern))
   (need-indianFrankincense    ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have Indian frankincense?"))
   (assert (indianFrankincense ?pattern))
) ; (defrule indianFrankincense

(defrule onionJuice
   (ailmentIdentified         y)
   (not (onionJuice           ?pattern))
   (need-onionJuice           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have onion juice?"))
   (assert (onionJuice        ?pattern))
) ; (defrule onionJuice

(defrule indianHempJuice
   (ailmentIdentified        y)
   (not (indianHempJuice     ?pattern))
   (need-indianHempJuice     ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have Indian hemp juice?"))
   (assert (indianHempJuice  ?pattern))
) ; (defrule indianHempJuice

(defrule almondOil
   (ailmentIdentified        y)
   (not (almondOil           ?pattern))
   (need-almondOil           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have almond oil?"))
   (assert (almondOil        ?pattern))
) ; (defrule almondOil

(defrule kalmegh
   (ailmentIdentified      y)
   (not (kalmegh           ?pattern))
   (need-kalmegh           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have kalmegh?"))
   (assert (kalmegh        ?pattern))
) ; (defrule kalmegh

(defrule giloy
   (ailmentIdentified    y)
   (not (giloy           ?pattern))
   (need-giloy           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have giloy?"))
   (assert (giloy        ?pattern))
) ; (defrule giloy

(defrule guduchi
   (ailmentIdentified      y)
   (not (guduchi           ?pattern))
   (need-guduchi           ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have guduchi?"))
   (assert (guduchi        ?pattern))
) ; (defrule guduchi