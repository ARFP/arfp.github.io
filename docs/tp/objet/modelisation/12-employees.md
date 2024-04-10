---
title: "Entreprise"
order: 12
serie: "modelisation"
---

# Étude de cas: Gestion d'employés 

**Analysez le texte suivant et modélisezle diagramme de classes correspondant.**

Une entreprise est une entité possédant un nom, un directeur, des managers et des employés.

Une personne est caractérisée par un nomet un prénom. Ces informations sont renseignées à la construction d'un objet de ce type. Une fois l'objet construit, il n'est possible de modifier ni le nom, ni le prénom. Un objet de type Personne est par contre capable de retourner son nom et prénom en une seule opération.

Un employé est une personne disposant d'un numéro d'employé (identifiant) et d'une adresse email auto calculée et non modifiable. Un tel objet permet également de connaitre le rôle (la fonction) de l'employé au sein de son entreprise.

Les employés sont intégrés à des équipes gérées par des managers eux-mêmes des employés. Les managers gèrent leurs propre liste d'employés mais ne peuvent pas y intégrer d'autres managers. Tous les employés associés à un manager possèdent le même rôle (la même fonction) que le manager au sein de l'entreprise. Plus concrètement, un 
manager possédant le rôle "développeur" est un manager de développeurs. Un employé peut faire partie de plusieurs équipes à la fois si toutes les conditions précédentes sont respectées.

Un directeur supervise le tout. Il est le manager des managers et peut interagir avec (et agir sur) toutes les équipes de l'entreprise. Il possède également la compétence pour ajouter ou supprimer un employé de l'entreprise (sauf lui-même, bien entendu). Il est possible de modifier l'adresse email d'un directeur.
