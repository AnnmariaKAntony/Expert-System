/*
* Ayurveda expert system.
*
* Rules to determine the appropriate homemade Ayurvedic treatment for the patient,
* depending on the patient's ailment and given ingredients.
*
* Each rule is named after the name of the illness its respective treatment is
* addressing, followed with a hyphen and a number to indicate version of the treatment.
* For example, there are 7 possible treatments for mouth sores, so the 6th possible 
* treatment would be named: mouthSores-6.
*
* @author Annmaria Antony
* @version November 20, 2022
*/

(defrule mouthSores-1
   (mouthSores y)

   (honey      y)
   (coconutOil y)                    
=>
   (checkUpOver "You can treat mouth sores by applying a mixture of honey and coconut oil to the affected area.")
) ; (defrule mouthSores-1

(defrule mouthSores-2
   (mouthSores y)

   (amla       y)                  
=>
   (checkUpOver "You can treat mouth sores by mixing amla powder with water and applying the resulting paste to the affected area.")
) ; (defrule mouthSores-2

(defrule mouthSores-3
   (mouthSores    y)

   (jasmineLeaves y)                  
=>
   (checkUpOver "You can treat mouth sores by chewing on jasmine leaves.")
) ; (defrule mouthSores-3

(defrule mouthSores-4
   (mouthSores     y)

   (turmericPowder y)     
   (ghee           y)             
=>
   (checkUpOver "You can treat mouth sores by applying a mixture of turmeric powder and ghee to the affected area.")
) ; (defrule mouthSores-4

(defrule mouthSores-5
   (mouthSores y)

   (amla       y)
   (baheda     y)
   (haritaki   y)
=>
   (checkUpOver "You can treat mouth sores by mixing amla powder, baheda powder, and haritaki powder with water and applying the resulting paste to the affected area.")
) ; (defrule mouthSores-5

(defrule mouthSores-6
   (mouthSores y)

   (coriander  y)
   (fennel     y)
   (cumin      y)
=>
   (checkUpOver "You can treat mouth sores by mixing crushed coriander leaves, fennel, and cumin with water and applying the resulting paste to the affected area.")
) ; (defrule mouthSores-6

(defrule mouthSores-7
   (mouthSores y)

   (mishri     y)
   (camphor    y)
=>
   (checkUpOver "You can treat mouth sores by mixing mishri and and a small amount of camphor with water and applying the resulting paste to the affected area.")
) ; (defrule mouthSores-7

(defrule dandruff-1
   (dandruff   y)

   (aloeVera   y)
   (coconutOil y)
   (holyBasil  y)
   (hibiscus   y)
   (shallots   y)
=>
   (checkUpOver "You can treat dandruff by applying a mixture of aloe vera extract, coconut oil, holy basil, ground hibiscus, and shallots to the affected area.")
) ; (defrule dandruff-1

(defrule itchyScalp-1
   (itchyScalp y)

   (aloeVera   y)
   (coconutOil y)
   (holyBasil  y)
   (hibiscus   y)
   (shallots   y)
=>
   (checkUpOver "You can treat an itchy scalp by applying a mixture of aloe vera extract, coconut oil, holy basil, ground hibiscus, and shallots to the affected area.")
) ; (defrule itchyScalp-1

(defrule hairFall-1
   (hairFall   y)

   (aloeVera   y)
   (coconutOil y)
   (holyBasil  y)
   (hibiscus   y)
   (shallots   y)
=>
   (checkUpOver "You can treat hair fall by applying a mixture of aloe vera extract, coconut oil, holy basil, ground hibiscus, and shallots to the affected area.")
) ; (defrule hairFall-1

(defrule brittleHair-1
   (brittleHair y)

   (hennaPowder y)
   (amla        y)
   (eggWhites   y)
=>
   (checkUpOver "You can treat brittle hair by applying a mixture of henna powder, amla, and egg whites to the affected area.")
) ; (defrule brittleHair-1

(defrule thinningHair-1
   (thinningHair y)

   (hennaPowder  y)
   (amla         y)
   (eggWhites    y) 
=>
   (checkUpOver "You can treat thinning hair by applying a mixture of henna powder, amla, and egg whites to the affected area.")
) ; (defrule thinningHair-1

(defrule headache-1
   (headache     y)

   (babyCoconuts y)
   (blackPepper  y)
=>
   (checkUpOver "You can treat headaches by applying a paste made from baby coconuts, black pepper, and water to the scalp area.")
) ; (defrule headaches-1

(defrule headache-2
   (headache    y)

   (ginger      y)
   (honey       y)
   (blackPepper y)
=>
   (checkUpOver "You can treat headaches by applying a paste made from ginger, honey, and black pepper to the scalp area.")
) ; (defrule headaches-2

(defrule headache-3
   (headache       y)

   (garlic         y)
   (turmericPowder y)
=>
   (checkUpOver "You can treat headaches by applying a paste made from garlic, turmeric powder, and water to the scalp area.")
) ; (defrule headaches-3

(defrule headache-4
   (headache       y)

   (haritaki       y)
   (calamusRootOil y)
   (sesameOil      y)
=>
   (checkUpOver "You can treat headaches by applying a paste made from haritaki, calamus root oil, and seasame oil to the scalp area.")
) ; (defrule headaches-4

(defrule headache-5
   (headache   y)

   (coconutOil y)
=>
   (checkUpOver "You can treat headaches by applying coconut oil to the scalp area.")
); (defrule headaches-5

(defrule headache-6
   (headache  y)

   (brahmiOil y)
=>
   (checkUpOver "You can treat headaches by applying brahmi oil to the scalp area.")
) ; (defrule headaches-6

(defrule headache-7
   (headache  y)

   (ghee      y)
=>
   (checkUpOver "You can treat headaches by applying ghee to the scalp area.")
) ; (defrule headaches-7

(defrule headache-8
   (headache    y)

   (ginger      y)
   (blackPepper y)
   (cinnamon    y)
   (cloves      y)
=>
   (checkUpOver "You can treat headaches by applying a paste made from ginger, black pepper, cinnamon, and cloves to the scalp area.")
) ; (defrule headaches-8

(defrule toothache-1
   (toothache  y)

   (cloves     y)
=>
   (checkUpOver "You can treat toothaches by chewing on cloves.")
) ; (defrule toothache-1

(defrule toothache-2
   (toothache  y)

   (cloveOil   y)
=>
   (checkUpOver "You can treat toothaches by applying clove oil to the affected area.")
) ; (defrule toothache-2

(defrule toothache-3
   (toothache      y)

   (turmericPowder y)
   (salt           y)
=>
   (checkUpOver "You can treat toothaches by applying a paste made from turmeric powder, salt, and water.")
) ; (defrule toothache-3

(defrule pinkEye-1
   (pinkEye   y)

   (holyBasil y)
=>
   (checkUpOver "You can treat pink eye by applying ground holy basil around the affected area.")
) ; (defrule pinkEye-1

(defrule acidReflux-1
   (acidReflux y)

   (ginger     y)
=>
   (checkUpOver "You can treat acid reflux by eating roast ginger.")
) ; (defrule acidReflux-1

(defrule foodPoisoning-1
   (foodPoisoning y)

   (nutmeg        y)
   (honey         y)
=>
   (checkUpOver "You can treat food poisoning by eating ground nutmeg and honey.")
) ; (defrule foodPoisoning-1

(defrule stomachache-1
   (stomachache y)

   (lemonJuice  y)
   (cinnamon    y)
=>
   (checkUpOver "You can treat stomachaches by eating a mixture of lemon juice and cinnamon.")
) ; (defrule stomachache-1

(defrule stomachache-2
   (stomachache y)

   (asafoetida  y)
   (ghee        y)
   (jaggery     y)
=>
   (checkUpOver "You can treat stomachaches by eating a mixture of asafoetida, ghee, and jaggery.")
) ; (defrule stomachache-2

(defrule stomachache-3
   (stomachache    y)

   (fenugreekSeeds y)
   (cuminSeeds     y)
   (yogurt         y)
=>
   (checkUpOver "You can treat stomachaches by eating a mixture of fenugreek seeds, cumin seeds, and yogurt.")
) ; (defrule stomachache-3

(defrule stomachache-4
   (stomachache y)

   (myrobalan   y)
   (castorOil   y)
   (salt        y)
=>
   (checkUpOver "You can treat stomachaches by eating a mixture of myrobalan, castor oil, and salt.")
) ; (defrule stomachache-4

(defrule lackOfAppetite-1
   (lackOfAppetite  y)

   (gooseberryJuice y)
   (ginger          y)
   (cloves          y)
   (pippali         y)
=>
   (checkUpOver "You can treat a lack of appetite by eating a mixture of gooseberry juice, ginger, cloves, and pippali.")
) ; (defrule lackOfAppetite-1

(defrule lackOfAppetite-2
   (lackOfAppetite y)

   (fennel         y)
   (coriander      y)
   (pippali        y)
   (amla           y)
   (baheda         y)
   (haritaki       y)
=>
   (checkUpOver "You can treat a lack of appetite by eating a mixture of fennel, coriander, pippali, amla, baheda, and haritaki.")
) ; (defrule lackOfAppetite-2

(defrule lackOfAppetite-3
   (lackOfAppetite y)

   (cinnamon       y)
   (blackPepper    y)
   (peppermint     y)
=>
   (checkUpOver "You can treat a lack of appetite by eating a mixture of cinnamon, black pepper, and peppermmint.")
) ; (defrule lackOfAppetite-3

(defrule lackOfAppetite-4
   (lackOfAppetite y)

   (fennelSeeds    y)
   (fenugreekSeeds y)
=>
   (checkUpOver "You can treat a lack of appetite by eating a mixture of fennel seeds and fenugreek seeds. ")
) ; (defrule lackOfAppetite-4

(defrule inflammation-1
   (inflammation y)

   (amla         y)
   (baheda       y)
   (haritaki     y)
=>
   (checkUpOver "You can treat inflammation by mixing amla powder, baheda powder, and haritaki powder with water and applying the resulting paste to the affected area.")
) ; (defrule inflammation-1

(defrule inflammation-2
   (inflammation   y)

   (turmericPowder y)
   (honey          y)
=>
   (checkUpOver "You can treat inflammation by applying a paste made from turmeric powder and honey to the affected area.")
) ; (defrule inflammation-2

(defrule inflammation-3
   (inflammation   y)

   (turmericPowder y)
   (ginger         y)
   (amla           y)
=>
   (checkUpOver "You can treat inflammation by applying a paste made from turmeric powder, ginger, and amla to the affected area.")
) ; (defrule inflammation-3

(defrule inflammation-4
   (inflammation   y)

   (turmericPowder y)
   (ginger         y)
   (cardamom       y)
   (milk           y)
=> 
   (checkUpOver "You can treat inflammation by applying a paste made from turmeric powder, ginger, cardamom, and milk to the affected area.")
) ; (defrule inflammation-4

(defrule musclePain-1
   (musclePain     y)

   (turmericPowder y)
   (ginger         y)
=>
   (checkUpOver "You can treat muscle pain by applying a paste made from turmeric powder, ginger, and water to the affected area.")
) ; (defrule musclePain-1

(defrule musclePain-2
   (musclePain    y)

   (marjoram      y)
   (essentialOil  y)
   (coconutOil    y)
=>
   (checkUpOver "You can treat muscle pain by applying a mixture of marjoram, essential oil, and coconut oil to the affected area.")
) ; (defrule musclePain-2

(defrule musclePain-3
   (musclePain y)

   (ghee       y)
   (ginger     y)
   (garlic     y)
=>
   (checkUpOver "You can treat muscle pain by applying a paste made from ghee, ginger, and garlic to the affected area.")
) ; (defrule musclePain-3

(defrule jointPain-1
   (jointPain      y)

   (turmericPowder y)
   (ginger         y)
=>
   (checkUpOver "You can treat joint pain by applying a paste made from turmeric powder, ginger, and water to the affected area.")
) ; (defrule jointPain-1

(defrule jointPain-2
   (jointPain     y)

   (marjoram      y)
   (essentialOil  y)
   (coconutOil    y)
=>
   (checkUpOver "You can treat joint pain by applying a mixture of marjoram, essential oil, and coconut oil to the affected area.")
) ; (defrule jointPain-2

(defrule jointPain-3
   (jointPain y)

   (ghee      y)
   (ginger    y)
   (garlic    y) 
=>
   (checkUpOver "You can treat joint pain by applying a paste made from ghee, ginger, and garlic to the affected area.")
) ; (defrule jointPain-3

(defrule bodyache-1
   (bodyache       y)

   (turmericPowder y)
   (fennel         y)
   (cloves         y)
   (camphor        y)
=>
   (checkUpOver "You can treat bodyaches by applying a paste made from turmeric powder, fennel, clove, and camphor to the affected area.")
) ; (defrule bodyache-1

(defrule fever-1
   (fever  y)

   (ginger y)
   (honey  y)
=>
   (checkUpOver "You can treat fevers by eating a mixture of ginger and honey.")
) ; (defrule fever-1

(defrule fever-2
   (fever          y)

   (turmericPowder y)
   (ginger         y)
=>
   (checkUpOver "You can treat fevers by eating a mixture of turmeric powder and ginger.")
) ; (defrule fever-2

(defrule fever-3
   (fever    y)

   (licorice y)
   (milk     y)
=>
   (checkUpOver "You can treat fevers by eating a mixture of licorice and milk.")
) ; (defrule fever-3

(defrule sleepLoss-1
   (sleepLoss     y)

   (gotuKola      y)
   (shankhapushpi y)
=>
   (checkUpOver "You can treat sleep loss by eating a mixture of gotu kola and shankhapushpi.")
) ; (defrule sleepLoss-1

(defrule sleepLoss-2
   (sleepLoss y)

   (nutmeg    y)
   (cardamom  y)
   (almonds   y)
   (milk      y)
=>
   (checkUpOver "You can treat sleep loss by eating a mixture of nutmeg, cardamom, almonds, and milk.")
) ; (defrule sleepLoss-2

(defrule sleepLoss-3
   (sleepLoss  y)

   (valerian   y)
   (chamomile  y)
   (tagara     y)
   (milk       y)
=>
   (checkUpOver "You can treat sleep loss by eating a mixture of valerian, chamomile, tagara, and milk.")
) ; (defrule sleepLoss-3

(defrule oilyFace-1
   (oilyFace         y)

   (carrot           y)
   (honey            y)
   (turmericPowder   y)
   (lemonJuice       y)
   (yogurt           y)
=>
   (checkUpOver "You can treat an oily face by applying a face mask made of carrot, honey, turmeric powder, lemon juice, and yogurt.")
) ; (defrule oilyFace-1

(defrule oilyFace-2
   (oilyFace         y)

   (rosewater        y)
   (honey            y)
   (almonds          y)
   (milk             y)
=>
   (checkUpOver "You can treat an oily face by applying a face mask made of rosewater, honey, almonds, and milk.")
) ; (defrule oilyFace-2

(defrule oilyFace-3
   (oilyFace         y)

   (fenugreekSeeds   y)
   (yogurt           y)
   (honey            y)
=>
   (checkUpOver "You can treat an oily face by applying a face mask made of fenugreek seeds, yogurt, and honey.")
) ; (defrule oilyFace-3

(defrule sunburn-1
   (sunburn          y)

   (carrot           y)
   (honey            y)
   (turmericPowder   y)
   (lemonJuice       y)
   (yogurt           y)
=>
   (checkUpOver "You can treat a sunburn by applying a face mask made of carrot, honey, turmeric powder, lemon juice, and yogurt.")
) ; (defrule sunburn-1

(defrule sunburn-2
   (sunburn          y)

   (rosewater        y)
   (honey            y)
   (almonds          y)
   (milk             y)
=>
   (checkUpOver "You can treat a sunburn by applying a face mask made of rosewater, honey, almonds, and milk.")
) ; (defrule sunburn-2

(defrule sunburn-3
   (sunburn          y)

   (fenugreekSeeds   y)
   (yogurt           y)
   (honey            y)
=>
   (checkUpOver "You can treat a sunburn by applying a face mask made of fenugreek seeds, yogurt, and honey.")
) ; (defrule sunburn-3

(defrule dryEyes-1
   (dryEyes          y)

   (amla             y)
   (baheda           y)
   (haritaki         y)
=>
   (checkUpOver "You can treat dry eyes using eye drops made from amla, baheda, and haritaki.")
) ; (defrule dryEyes-1

(defrule dryEyes-2
   (dryEyes          y)

   (rosewater        y)
   (castorOil        y)
   (turmericPowder   y)
=>
   (checkUpOver "You can treat dry eyes using eye drops made from rosewater, castor oil, and turmeric powder.")
) ; (defrule dryEyes-2

(defrule soreThroat-1
   (soreThroat       y)

   (cinnamon         y)
   (honey            y)
   (turmericPowder   y)
   (licorice         y)
=>
   (checkUpOver "You can treat a sore throat by eating a mixture of cinnamon, honey, turmeric powder, and licorice.")
); (defrule soreThroat-1

(defrule soreThroat-2
   (soreThroat       y)

   (amla             y)
   (fenugreekSeeds   y)
   (holyBasil        y)
=>
   (checkUpOver "You can treat a sore throat by eating a mixture of amla, fenugreek seeds, and holy basil.")
) ; (defrule soreThroat-2

(defrule soreThroat-3
   (soreThroat       y)

   (ginger           y)
   (honey            y)
   (turmericPowder   y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a sore throat by drinking a mixture of ginger, honey, turmeric powder, and lemon juice.")
) ; (defrule soreThroat-3

(defrule cough-1
   (cough            y)

   (holyBasil        y)
   (honey            y)
   (ginger           y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cough by drinking a mixture of holy basil, honey, ginger, and lemon juice.")
) ; (defrule cough-1

(defrule cough-2
   (cough            y)

   (blackPepper      y)
   (turmericPowder   y)
   (cloves           y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cough by drinking a mixture of black pepper, turmeric powder, cloves, and lemon juice.")
) ; (defrule cough-2

(defrule cough-3
   (cough            y)

   (cardamom         y)
   (holyBasil        y)
   (ginger           y)
   (peppercorns      y)
   (blackSalt        y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cough by drinking a tea made from of cardamom, holy basil, ginger, peppercorns, black salt, and lemon juice.")
) ; (defrule cough-3

(defrule cold-1
   (cold             y)

   (holyBasil        y)
   (honey            y)
   (ginger           y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cold by drinking a mixture of holy basil, honey, ginger, and lemon juice.")
) ; (defrule cold-1

(defrule cold-2
   (cold             y)

   (blackPepper      y)
   (turmericPowder   y)
   (cloves           y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cold by drinking a mixture of black pepper, turmeric powder, cloves, and lemon juice.")
) ; (defrule cold-2

(defrule cold-3
   (cold             y)

   (cardamom         y)
   (holyBasil        y)
   (ginger           y)
   (peppercorns      y)
   (blackSalt        y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat a cold by drinking a tea made from cardamom, holy basil, ginger, peppercorns, black salt, and lemon juice.")
) ; (defrule cold-3

(defrule earInfection-1
   (earInfection     y)

   (garlic           y)
   (coconutOil       y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat an ear infection by using ear drops made from garlic, coconut oil, and lemon juice.")
) ; (defrule earInfection-1

(defrule earInfection-2
   (earInfection     y)

   (holyBasil        y)
   (mint             y)
   (lemonJuice       y)
=>
   (checkUpOver "You can treat an ear infection by using ear drops made from the juices of holy basil, mint, and lemon.")
) ; (defrule earInfection-2

(defrule asthma-1
   (asthma     y)

   (honey      y)
   (banana     y)
   (cloves     y)
   (lemonJuice y)
=>
   (checkUpOver "You can treat asthma by eating a mixture of honey, banana, cloves, and lemon juice.")
) ; (defrule asthma-1

(defrule asthma-2
   (asthma                   y)

   (yellowBerriedNightshade  y)
   (lemonJuice               y)
   (honey                    y)
=>
   (checkUpOver "You can treat asthma by drinking a tea made from yellow-berried nightshades, lemon juice, and honey.")
) ; (defrule asthma-2

(defrule flu-1
   (flu          y) 

   (holyBasil    y) 
   (blackPepper  y)   
   (ginger       y)
   (ajwain       y)              
=>
   (checkUpOver "You can treat the flu by drinking a tea made from holy basil, black pepper, ginger, and ajwain.")
) ; (defrule flu-1

(defrule sinusInfection-1
   (sinusInfection  y) 

   (cloves          y)
   (honey           y)
   (holyBasil       y)
   (mint            y)
   (ginger          y)
   (garlic          y)            
=>
   (checkUpOver "You can treat a sinus infection by drinking a tea made from cloves, honey, holy basil, mint, ginger, and garlic.")
) ; (defrule sinusInfection-1

(defrule skinInfection-1
   (skinInfection   y) 

   (carrot          y)
   (honey           y)
   (turmericPowder  y)
   (lemonJuice      y)
   (yogurt          y)
=>
   (checkUpOver "You can treat a skin infection by applying a mixture of carrot, honey, turmeric powder, lemon, and yogurt to the affected area.")
) ; (defrule skinInfection-1

(defrule skinInfection-2
   (skinInfection   y) 

   (rosewater       y)
   (honey           y)
   (almonds         y)
   (milk            y)
=>
   (checkUpOver "You can treat a skin infection by applying a mixture of rosewater, honey, almonds, and milk to the affected area.")
) ; (defrule skinInfection-2

(defrule skinInfection-3
   (skinInfection   y) 

   (fenugreekSeeds  y)
   (yogurt          y)
   (honey           y)
=>
   (checkUpOver "You can treat a skin infection by applying a mixture of fenugreek seeds, yogurt, and honey to the affected area.")
) ; (defrule skinInfection-3

(defrule digestiveProblems-1
   (digestiveProblems   y) 

   (turmericPowder      y)
   (cumin               y)
   (fennelSeeds         y)
   (coriander           y)
   (ginger              y)
   (garlic              y)
=>
   (checkUpOver "You can treat digestive problems by drinking a tea made from turmeric powder, cumin, fennel seeds, coriander, ginger, and garlic.")
) ; (defrule digestiveProblems-1

(defrule digestiveProblems-2
   (digestiveProblems   y) 

   (honey               y)
   (nutmeg              y)
=>
   (checkUpOver "You can treat digestive problems by eating a mixture of honey and ground nutmeg.")
) ; (defrule digestiveProblems-2

(defrule eczema-1
   (eczema   y) 

   (ghee     y)
   (honey    y)
=>
   (checkUpOver "You can treat eczema by applying ghee and honey to the affected area.")
) ; (defrule eczema-1

(defrule eczema-2
   (eczema     y) 

   (aloeVera   y)
   (coconutOil y)
   (ghee       y)
=>
   (checkUpOver "You can treat eczema by applying aloe vera, coconut oil, and ghee to the affected area.")
) ; (defrule eczema-2

(defrule eczema-3
   (eczema    y) 

   (neemOil   y)
   (jojobaOil y)
   (ghee      y)
=>
   (checkUpOver "You can treat eczema by applying neem oil, jojoba oil, and ghee to the affected area.")
) ; (defrule eczema-3

(defrule highBloodPressure-1
   (highBloodPressure    y) 

   (amla                 y)
   (gotuKola             y)
   (garlic               y)
   (honey                y)
=>
   (checkUpOver "You can treat high blood pressure by drinking a tea made from amla, gotu kola, garlic, and honey.")
) ; (defrule highBloodPressure-1

(defrule highCholesterol-1
   (highCholesterol      y) 

   (garlic              y)
   (guggulu             y)
   (arjuna              y)
=>
   (checkUpOver "You can treat high cholesterol by drinking a tea made from garlic, guggulu, and arjuna.")
) ; (defrule highCholesterol-1

(defrule mentalStress-1
   (mentalStress        y) 

   (gotuKola            y)
   (honey               y)
   (lemonJuice          y)
=>
   (checkUpOver "You can treat mental stress by drinking a tea made from gotu kola, honey, and lemon juice.")
) ; (defrule mentalStress-1

(defrule arthritis-1
   (arthritis          y) 

   (indianFrankincense y)
   (castorOil          y)
   (garlic             y)
   (ginger             y)
   (ghee               y)
=>
   (checkUpOver "You can treat arthritis by applying Indian frankincense, castor oil, garlic, ginger, and ghee to the affected area.")
) ; (defrule arthritis-1

(defrule arthritis-2
   (arthritis        y) 

   (neemOil          y)
   (ghee             y)
=>
   (checkUpOver "You can treat arthritis by applying neem oil and ghee to the affected area.")
) ; (defrule arthritis-2

(defrule arthritis-3
   (arthritis        y) 

   (jojobaOil        y)
   (ghee             y)
=>
   (checkUpOver "You can treat arthritis by applying jojoba oil and ghee to the affected area.")
) ; (defrule arthritis-3

(defrule spondylosis-1
   (spondylosis        y) 

   (indianFrankincense y)
   (castorOil          y)
   (garlic             y)
   (ginger             y)
   (ghee               y) 
=>
   (checkUpOver "You can treat spondylosis by applying Indian frankincense, castor oil, garlic, ginger, and ghee to the affected area.")
) ; (defrule spondylosis-1

(defrule spondylosis-2
   (spondylosis       y) 

   (neemOil           y)
   (ghee              y)
=>
   (checkUpOver "You can treat spondylosis by applying neem oil and ghee to the affected area.")
) ; (defrule spondylosis-2

(defrule spondylosis-3
   (spondylosis       y) 

   (jojobaOil         y)
   (ghee              y)
=>
   (checkUpOver "You can treat spondylosis by applying jojoba oil and ghee to the affected area.")
) ; (defrule spondylosis-3

(defrule carpalTunnel-1
   (carpalTunnel       y) 

   (indianFrankincense y)
   (castorOil          y)
   (garlic             y)
   (ginger             y)
   (ghee               y) 
=>
   (checkUpOver "You can treat carpal tunnel by applying Indian frankincense, castor oil, garlic, ginger, and ghee to the affected area.")
) ; (defrule carpalTunnel-1

(defrule carpalTunnel-2
   (carpalTunnel       y) 

   (neemOil            y)
   (ghee               y)
=>
   (checkUpOver "You can treat carpal tunnel by applying neem oil and ghee to the affected area.")
) ; (defrule carpalTunnel-2

(defrule carpalTunnel-3
   (carpalTunnel     y) 

   (jojobaOil        y)
   (ghee             y)
=>
   (checkUpOver "You can treat carpal tunnel applying jojoba oil and ghee to the affected area.")
) ; (defrule carpalTunnel-3

(defrule anorexia-1
   (anorexia       y) 

   (amla           y)
   (honey          y)
   (lemonJuice     y)
=>
   (checkUpOver "You can treat anorexia by drinking tea made from amla, honey, and lemon juice.")
) ; (defrule anorexia-1

(defrule lice-1
   (lice            y) 

   (onionJuice      y)
   (indianHempJuice y)
   (lemonJuice      y)
=>
   (checkUpOver "You can treat lice by applying the juices of onion, Indian Hemp, and lemon to the scalp.")
) ; (defrule lice-1

(defrule dryHair-1
   (dryHair       y) 

   (amla          y)
   (banana        y)
   (honey         y)
   (yogurt        y)
=>
   (checkUpOver "You can treat dry hair by using a hair mask made from amla, banana, honey, and yogurt.")
) ; (defrule dryHair-1

(defrule dryHair-2
   (dryHair       y) 

   (almondOil     y)
   (eggWhites     y)
   (yogurt        y)
=>
   (checkUpOver "You can treat dry hair by using a hair mask made from almond oil, egg whites, and yogurt.")
) ; (defrule dryHair-2

(defrule pneumonia-1
   (pneumonia       y) 

   (turmericPowder  y)
   (lemonJuice      y)
   (honey           y)
=>
   (checkUpOver "You can treat pneumonia by drinking tea made from turmeric powder, lemon juice, and honey.")
) ; (defrule pneumonia-1

(defrule pneumonia-2
   (pneumonia       y) 

   (turmericPowder  y)
   (kalmegh         y)
=>
   (checkUpOver "You can treat pneumonia by drinking tea made from turmeric powder and kalmegh.")
) ; (defrule pneumonia-2

(defrule malaria-1
   (malaria       y) 

   (giloy         y)
   (lemonJuice    y)
   (honey         y)
=>
   (checkUpOver "You can treat malaria by drinking tea made from giloy, lemon juice, and honey.")
) ; (defrule malaria-1

(defrule malaria-2
   (malaria       y) 

   (haritaki      y)
   (lemonJuice    y)
   (honey         y)
=>
   (checkUpOver "You can treat malaria by drinking tea made from haritaki, lemon juice, and honey.")
) ; (defrule malaria-2

(defrule malaria-3
   (malaria       y) 

   (guduchi       y)
   (lemonJuice    y)
   (honey         y)
=>
   (checkUpOver "You can treat malaria by drinking tea made from guduchi, lemon juice, and honey.")
) ; (defrule malaria-3

(defrule dengueFever-1
   (dengueFever       y) 

   (giloy             y)
   (lemonJuice        y)
   (honey             y)
=>
   (checkUpOver "You can treat dengue fever by drinking tea made from giloy, lemon juice, and honey.")
) ; (defrule dengueFever-1

(defrule dengueFever-2
   (dengueFever       y) 

   (holyBasil         y)
   (lemonJuice        y)
   (honey             y)
=>
   (checkUpOver "You can treat dengue fever by drinking tea made from holy basil, lemon juice, and honey.")
) ; (defrule dengueFever-2

(defrule lymeDisease-1
   (lymeDisease      y) 

   (amla             y)
   (baheda           y)
   (haritaki         y)
   (lemonJuice       y)
   (honey            y)
=>
   (checkUpOver "You can treat lyme disease by drinking tea made from amla, baheda, haritaki, lemon juice, and honey.")
) ; (defrule lymeDisease-1

(defrule cramps-1
   (cramps       y) 

   (amla         y)
   (baheda       y)
   (haritaki     y)
   (lemonJuice   y)
   (honey        y)
=>
   (checkUpOver "You can treat cramps by drinking tea made from amla, baheda, haritaki, lemon juice, and honey.")
) ; (defrule cramps-1

(defrule cramps-2
   (cramps       y) 

   (honey        y)
   (nutmeg       y)
=>
   (checkUpOver "You can treat cramps by eating a mixture of honey and ground nutmeg.")
) ; (defrule cramps-2

(defrule obesity-1
   (obesity      y) 

   (amla         y)
   (baheda       y)
   (haritaki     y)
   (lemonJuice   y)
   (honey        y)
=>
   (checkUpOver "You can treat obesity by drinking tea made from amla, baheda, haritaki, lemon juice, and honey.")
) ; (defrule obesity-1

(defrule acne-1
   (acne           y) 

   (rosewater      y)
   (turmericPowder y)
   (sandalwood     y)
=>
   (checkUpOver "You can treat acne by using a face mask made from rosewater, turmeric powder, and sandalwood.")
) ; (defrule acne-1

(defrule acne-2
   (acne       y) 

   (rosewater  y)
   (cinnamon   y)
   (lemonJuice y)
=>
   (checkUpOver "You can treat acne by using a face mask made from rosewater, cinnamon, and lemon juice.")
) ; (defrule acne-2

(defrule blisters-1
   (blisters         y) 

   (rosewater        y)
   (turmericPowder   y)
   (sandalwood       y)
=>
   (checkUpOver "You can treat blisters by using a face mask made from rosewater, turmeric powder, and sandalwood.")
) ; (defrule blisters-1

(defrule blisters-2
   (blisters       y) 

   (rosewater      y)
   (cinnamon       y)
   (lemonJuice     y)
=>
   (checkUpOver "You can treat blisters by using a face mask made from rosewater, turmeric powder, and sandalwood.")
) ; (defrule blisters-2