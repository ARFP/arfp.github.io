---
title: "Académie"
order: 14
serie: "modelisation"
---

# Étude de cas : Académie 

**Elaborez le diagramme de classes correspondant à la description ci-dessous. Pour simplifier l’exercice, on limitera 
le diagramme à une seule année d’étude.**

Une académie souhaite gérer les cours dispensés dans plusieurs collèges. 
- Chaque collège possède d’un site Internet.
- Chaque collège est structuré en départements, qui regroupent chacun des enseignants spécifiques. 
Parmi ces enseignants, l’un d’eux est responsable du département.
- Un enseignant se définit par son nom, prénom, email, date de prise de fonction.
- Chaque enseignant ne dispense qu’une seule matière.
- Les étudiants suivent quant à eux plusieurs matières et reçoivent une note pour chacune d’elle.
- Pour chaque étudiant, on veut gérer son nom, prénom, ainsi que son année d’entrée au collège.
- Une matière peut être enseigné par plusieurs enseignants, mais a toujours lieu dans la même salle de cours 
(chacune ayant un nombre de places déterminées).
- On doit pouvoir calculer la moyenne générale d’un élève et pouvoir afficher les matières dans lesquelles il 
n’a pas été noté.
- Enfin, on doit pouvoir imprimer la fiche d’un enseignant ou d’un élève. 
