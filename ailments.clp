/*
* Ayurveda expert system.
*
* Rules to determine the patient's ailment.
* Rules are named after their respective ailments.
*
* Ailments are organized into categories depending on the nature of the illness.
* In order to streamline the check-up process, specific questions about particular
* ailments are asked only if there is deemed to be a health concern within the general
* category. For example, the system will only ask if the patient has eczema if the patient
* has indicated that they suffer from a skin sickness, with "skin sickness" being the 
* ailment category and "eczema" being the specific ailment that will need to be treated.
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

/*
* "General health" rules determine if the patient's general health is 
* satisfactory. The ailments under the "general health" category include:
*
* [1] fever
*/
(defrule generalHealth
   (not (ailmentIdentified    y))
   (not (generalHealth        ?pattern))
   (need-generalHealth        ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a temperature?"))
   (assert (generalHealth     ?pattern))
) ; (defrule generalHealth

(defrule fever
   (not (ailmentIdentified    y))
   (generalHealth             y)
   (not (fever                ?pattern))
   (need-fever                ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a fever?"))
   (assert (fever             ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule fever

/*
* "Vials" rules determine if the patient's measured vials are 
* satisfactory. The ailments under the "vials" category include:
*
* [1] high blood pressure
* [2] high cholesterol
*/
(defrule vials
   (not (ailmentIdentified    y))
   (not (vials                ?pattern))
   (need-vials                ?pattern)
=>
   (bind ?pattern (askQuestion "Are your vial measurements concerning?"))
   (assert (vials             ?pattern))
) ; (defrule vials

(defrule highBloodPressure
   (not (ailmentIdentified    y))
   (vials                     y)
   (not (highBloodPressure    ?pattern))
   (need-highBloodPressure    ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a high blood pressure?"))
   (assert (highBloodPressure ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule highBloodPressure

(defrule highCholesterol
   (not (ailmentIdentified    y))
   (vials                     y)
   (not (highCholesterol      ?pattern))
   (need-highCholesterol      ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a high cholesterol?"))
   (assert (highCholesterol   ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule highCholesterol

/*
* "Hair sicknesses" rules determine if the patient's hair health is 
* satisfactory. The ailments under the "hair sicknesses" category include:
*
* [1] dandruff
* [2] itchy scalp
* [3] hair fall
* [4] brittle hair
* [5] thinning hair
* [6] lice
* [7] dry hair
*/
(defrule hairSicknesses
   (not (ailmentIdentified    y))
   (not (hairSicknesses       ?pattern))
   (need-hairSicknesses       ?pattern)
=>
   (bind ?pattern (askQuestion "Are you concerned about your hair health?"))
   (assert (hairSicknesses    ?pattern))
) ; (defrule hairSicknesses

(defrule dandruff
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (dandruff             ?pattern))
   (need-dandruff             ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have dandruff?"))
   (assert (dandruff          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule dandruff

(defrule itchyScalp
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (itchyScalp           ?pattern))
   (need-itchyScalp           ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing an itchy scalp?"))
   (assert (itchyScalp        ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule itchyScalp

(defrule hairFall
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (hairFall             ?pattern))
   (need-hairFall             ?pattern)
=>
   (bind ?pattern (askQuestion "Is your hair falling out?"))
   (assert (hairFall          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule hairFall

(defrule brittleHair
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (brittleHair          ?pattern))
   (need-brittleHair          ?pattern)
=>
   (bind ?pattern (askQuestion "Is your hair brittle?"))
   (assert (brittleHair       ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule brittleHair

(defrule thinningHair
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (thinningHair         ?pattern))
   (need-thinningHair         ?pattern)
=>
   (bind ?pattern (askQuestion "Is your hair thinning?"))
   (assert (thinningHair      ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule thinningHair

(defrule lice
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (lice                 ?pattern))
   (need-lice                 ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have lice?"))
   (assert (lice              ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule lice

(defrule dryHair
   (not (ailmentIdentified    y))
   (hairSicknesses            y)
   (not (dryHair              ?pattern))
   (need-dryHair              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have dry hair?"))
   (assert (dryHair           ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule dryHair

/*
* "Skin sicknesses" rules determine if the patient's skin health is 
* satisfactory. The ailments under the "skin sicknesses" category include:
*
* [1] eczema
* [2] skin infection
* [3] inflammation
* [4] oily face
* [5] sunburn
* [6] acne
* [7] blisters
*/
(defrule skinSicknesses
   (not (ailmentIdentified    y))
   (not (skinSicknesses       ?pattern))
   (need-skinSicknesses       ?pattern)
=>
   (bind ?pattern (askQuestion "Are you concerned about your skin health?"))
   (assert (skinSicknesses    ?pattern))
) ; (defrule skinSicknesses

(defrule eczema
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (eczema               ?pattern))
   (need-eczema               ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have eczema?"))
   (assert (eczema            ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule eczema

(defrule skinInfection
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (skinInfection        ?pattern))
   (need-skinInfection        ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a skin infection?"))
   (assert (skinInfection     ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule skinInfection

(defrule inflammation
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (inflammation         ?pattern))
   (need-inflammation         ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have inflammation on your skin?"))
   (assert (inflammation      ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule inflammation

(defrule oilyFace
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (oilyFace             ?pattern))
   (need-oilyFace             ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have an oily face?"))
   (assert (oilyFace          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule oilyFace

(defrule sunburn
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (sunburn              ?pattern))
   (need-sunburn              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a sunburn?"))
   (assert (sunburn           ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule sunburn

(defrule acne
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (acne                 ?pattern))
   (need-acne                 ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have acne?"))
   (assert (acne              ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule acne

(defrule blisters
   (not (ailmentIdentified    y))
   (skinSicknesses            y)
   (not (blisters             ?pattern))
   (need-blisters             ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have blisters?"))
   (assert (blisters          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule blisters

/*
* "Stomach sicknesses" rules determine if the patient's stomach health is 
* satisfactory. The ailments under the "stomach sicknesses" category include:
*
* [1] acid reflux
* [2] food poisoning
* [3] stomachache
* [4] lack of appetite
* [5] digestive problems
* [6] cramps
*/
(defrule stomachSicknesses
   (not (ailmentIdentified    y))
   (not (stomachSicknesses    ?pattern))
   (need-stomachSicknesses    ?pattern)
=>
   (bind ?pattern (askQuestion "Are you concerned about your stomach health?"))
   (assert (stomachSicknesses ?pattern))
) ; (defrule stomachSicknesses

(defrule acidReflux
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (acidReflux           ?pattern))
   (need-acidReflux           ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing acid reflux?"))
   (assert (acidReflux        ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule acidReflux

(defrule foodPoisoning
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (foodPoisoning        ?pattern))
   (need-foodPoisoning        ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing food poisoning?"))
   (assert (foodPoisoning     ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule foodPoisoning

(defrule stomachache
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (stomachache         ?pattern))
   (need-stomachache         ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing a stomachache?"))
   (assert (stomachache      ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule stomachache

(defrule lackOfAppetite
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (lackOfAppetite       ?pattern))
   (need-lackOfAppetite       ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing a lack of appetite?"))
   (assert (lackOfAppetite    ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule lackOfAppetite

(defrule digestiveProblems
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (digestiveProblems    ?pattern))
   (need-digestiveProblems    ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have digestive problems?"))
   (assert (digestiveProblems ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule digestiveProblems

(defrule cramps
   (not (ailmentIdentified    y))
   (stomachSicknesses         y)
   (not (cramps               ?pattern))
   (need-cramps               ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have cramps?"))
   (assert (cramps            ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule cramps

/*
* "Aches or soreness" rules determine if the patient suffers from any 
* aches or soreness, including muscle and joint pain. The ailments under 
* the "aches or soreness" category include:
*
* [1] headache
* [2] toothache
* [3] muscle pain
* [4] joint pain
* [5] bodyache
* [6] arthritis
* [7] spondylosis
* [8] carpal tunnel
*/
(defrule achesOrSoreness
   (not (ailmentIdentified    y))
   (not (achesOrSoreness      ?pattern))
   (need-achesOrSoreness      ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing any aches or soreness?"))
   (assert (achesOrSoreness   ?pattern))
) ; (defrule achesOrSoreness

(defrule headache
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (headache             ?pattern))
   (need-headache             ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing a headache?"))
   (assert (headache          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule headache

(defrule toothache
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (toothache            ?pattern))
   (need-toothache            ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing a toothache?"))
   (assert (toothache         ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule toothache

(defrule musclePain
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (musclePain           ?pattern))
   (need-musclePain           ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing muscle pain?"))
   (assert (musclePain        ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule musclePain

(defrule jointPain
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (jointPain            ?pattern))
   (need-jointPain            ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing joint pain?"))
   (assert (jointPain         ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule jointPain

(defrule bodyache
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (bodyache             ?pattern))
   (need-bodyache             ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing bodyache?"))
   (assert (bodyache          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule bodyache

(defrule arthritis
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (arthritis            ?pattern))
   (need-arthritis            ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have arthritis?"))
   (assert (arthritis         ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule arthritis

(defrule spondylosis
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (spondylosis          ?pattern))
   (need-spondylosis          ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have spondylosis?"))
   (assert (spondylosis       ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule spondylosis

(defrule carpalTunnel
   (not (ailmentIdentified    y))
   (achesOrSoreness           y)
   (not (carpalTunnel         ?pattern))
   (need-carpalTunnel         ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have carpal tunnel?"))
   (assert (carpalTunnel      ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule carpalTunnel

/*
* "Mental sicknesses" rules determine if the patient's mental health is 
* satisfactory. The ailments under the "mental sicknesses" category include:
*
* [1] anorexia
* [2] sleep loss
* [3] mental stress
*/
(defrule mentalSicknesses
   (not (ailmentIdentified    y))
   (not (mentalSicknesses     ?pattern))
   (need-mentalSicknesses     ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have any concerns regarding your mental health?"))
   (assert (mentalSicknesses  ?pattern))
) ; (defrule mentalSicknesses

(defrule anorexia
   (not (ailmentIdentified    y))
   (mentalSicknesses          y)
   (not (anorexia             ?pattern))
   (need-anorexia             ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing anorexia?"))
   (assert (anorexia          ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule anorexia

(defrule sleepLoss
   (not (ailmentIdentified    y))
   (mentalSicknesses          y)
   (not (sleepLoss            ?pattern))
   (need-sleepLoss            ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing sleep loss?"))
   (assert (sleepLoss         ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule sleepLoss

(defrule mentalStress
   (not (ailmentIdentified    y))
   (mentalSicknesses          y)
   (not (mentalStress         ?pattern))
   (need-mentalStress         ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing mental stress?"))
   (assert (mentalStress      ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule mentalStress

/*
* "Insect bite sicknesses" rules determine if the patient suffers from any 
* insect bite-related illnesses. The ailments under the "insect bite sicknesses" 
* category include:
*
* [1] mosquito bites
* [2] malaria
* [3] dengue fever
* [4] lyme disease
*/
(defrule insectBiteSicknesses
   (not (ailmentIdentified       y))
   (not (insectBiteSicknesses    ?pattern))
   (need-insectBiteSicknesses    ?pattern)
=>
   (bind ?pattern (askQuestion "Are you suffering from any insect bites or related illnesses?"))
   (assert (insectBiteSicknesses ?pattern))
) ; (defrule insectBiteSicknesses

(defrule mosquitoBites
   (not (ailmentIdentified    y))
   (insectBiteSicknesses      y)
   (not (mosquitoBites        ?pattern))
   (need-mosquitoBites        ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have mosquito bites?"))
   (assert (mosquitoBites     ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule mosquitoBites

(defrule malaria
   (not (ailmentIdentified    y))
   (insectBiteSicknesses      y)
   (not (malaria              ?pattern))
   (need-malaria              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have malaria?"))
   (assert (malaria           ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule malaria

(defrule dengueFever
   (not (ailmentIdentified    y))
   (insectBiteSicknesses      y)
   (not (dengueFever          ?pattern))
   (need-dengueFever          ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have dengue fever?"))
   (assert (dengueFever       ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule dengueFever

(defrule lymeDisease
   (not (ailmentIdentified    y))
   (insectBiteSicknesses      y)
   (not (lymeDisease          ?pattern))
   (need-lymeDisease          ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have lyme disease?"))
   (assert (lymeDisease       ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule lymeDisease

/*
* "Eyes, nose, ear, mouth, throat sicknesses" rules determine if the patient's
* health relating to their eyes, nose, ear, mouth, and throat is satisfactory.
* The ailments under the "eyes, nose, ear, mouth, throat sicknesses" category include:
*
* [1] mouth sores
* [2] pink eye
* [3] dry eyes
* [4] sore throat
* [5] cough
* [6] cold
* [7] ear infection
* [8] sinus infection
*/
(defrule eyesNoseEarMouthThroatSicknesses
   (not (ailmentIdentified                   y))
   (not (eyesNoseEarMouthThroatSicknesses    ?pattern))
   (need-eyesNoseEarMouthThroatSicknesses    ?pattern)
=>
   (bind ?pattern (askQuestion "Are you concerned about any ailments pertaining to your eyes, nose, ear, mouth, or throat?"))
   (assert (eyesNoseEarMouthThroatSicknesses ?pattern))
) ; (defrule eyesNoseEarMouthThroatSicknesses

(defrule mouthSores
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (mouthSores                  ?pattern))
   (need-mouthSores                  ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing mouth sores?"))
   (assert (mouthSores               ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule mouthSores

(defrule pinkEye
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (pinkEye                     ?pattern))
   (need-pinkEye                     ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing pink eye?"))
   (assert (pinkEye                  ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule pinkEye

(defrule dryEyes
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (dryEyes                     ?pattern))
   (need-dryEyes                     ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have dry eyes?"))
   (assert (dryEyes                  ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule dryEyes

(defrule soreThroat
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (soreThroat                  ?pattern))
   (need-soreThroat                  ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a sore throat?"))
   (assert (soreThroat               ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule soreThroat

(defrule cough
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (cough                       ?pattern))
   (need-cough                       ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a cough?"))
   (assert (cough                    ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule cough

(defrule cold
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (cold                        ?pattern))
   (need-cold                        ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a cold?"))
   (assert (cold                     ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule cold

(defrule earInfection
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (earInfection                ?pattern))
   (need-earInfection                ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have an ear infection?"))
   (assert (earInfection             ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule earInfection

(defrule sinusInfection
   (not (ailmentIdentified           y))
   (eyesNoseEarMouthThroatSicknesses y)
   (not (sinusInfection              ?pattern))
   (need-sinusInfection              ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have a sinus infection?"))
   (assert (sinusInfection           ?pattern))
   (assert (ailmentIdentified        ?pattern))
) ; (defrule sinusInfection

/*
* "Respiratory sicknesses" rules determine if the patient's respiratory health is 
* satisfactory. The ailments under the "respiratory sicknesses" category include:
*
* [1] asthma
* [2] pneumonia
* [3] flu
*/
(defrule respiratorySicknesses
   (not (ailmentIdentified                 y))
   (not (respiratorySicknesses             ?pattern))
   (need-respiratorySicknesses             ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have any concerns regarding your respiratory health?"))
   (assert (respiratorySicknesses          ?pattern))
) ; (defrule respiratorySicknesses

(defrule asthma
   (not (ailmentIdentified    y))
   (respiratorySicknesses     y)
   (not (asthma               ?pattern))
   (need-asthma               ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have asthma?"))
   (assert (asthma            ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule asthma

(defrule pneumonia
   (not (ailmentIdentified    y))
   (respiratorySicknesses     y)
   (not (pneumonia            ?pattern))
   (need-pneumonia            ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have pneumonia?"))
   (assert (pneumonia         ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule pneumonia

(defrule flu
   (not (ailmentIdentified    y))
   (respiratorySicknesses     y)
   (not (flu                  ?pattern))
   (need-flu                  ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have the flu?"))
   (assert (flu               ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule flu

/*
* "Weight concerns" rules determine if the patient's weight is 
* satisfactory. The ailments under the "weight concerns" category include:
*
* [1] obesity
*/
(defrule weightConcerns
   (not (ailmentIdentified                 y))
   (not (weightConcerns                    ?pattern))
   (need-weightConcerns                    ?pattern)
=>
   (bind ?pattern (askQuestion "Do you have any concerns regarding your weight?"))
   (assert (weightConcerns                 ?pattern))
) ; (defrule weightConcerns

(defrule obesity
   (not (ailmentIdentified    y))
   (weightConcerns            y)
   (not (obesity              ?pattern))
   (need-obesity              ?pattern)
=>
   (bind ?pattern (askQuestion "Are you experiencing obesity?"))
   (assert (obesity           ?pattern))
   (assert (ailmentIdentified ?pattern))
) ; (defrule obesity
