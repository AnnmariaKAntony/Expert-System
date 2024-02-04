Implements an expert system via the Rete algorithm in Jess that can:

1) determine a patient's ailment via a series of questions regarding existing symptoms 
2) propose a homemade ayurvedic* treatment via a series of questions used to ascertain household ingredients available to the patient

*Ayurveda is an ancient form of Indian ethnomedicine. All rules regarding diagnosis and treatments in this expert system are based on expert knowledge, which was provided in the data collection stage of development by a licensed Ayurvedic practitioner in India via a series of interviews.

  ayurveda.clp — main file
  
  ailments.clp - file containing rules for making the primary diagnosis
  
  ingredients.clp - file containing rules for determining available household ingredients
  
  treatments.clp - file containing rules for suggesting the optimal ayurvedic treatment based on diagnosis and available ingredients
