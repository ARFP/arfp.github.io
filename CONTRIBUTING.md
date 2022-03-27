# Contribuer

Merci de penser à vouloir nous aider ! Sur quoi souhaiteriez-vous travailler ?

- Rédiger du nouveau contenu
- Compléter, Mettre à jour ou corriger du contenu existant
- Participer aux éventuels tickets ouverts


## Avant de démarrer

Ce projet utilise Git. Pour l'installer et découvrir l'outil, rendez-vous sur [le site officiel](https://git-scm.com). 

1. La première chose à faire est de [fork le repository](https://help.github.com/articles/fork-a-repo/).
2. Récupérez le code de votre fork.
4. Lorsque nous travaillons avec Git, nous utilisons un processus de développement basé sur "une branche par fonctionnalité/bug".
   La première chose à faire une fois que votre projet est installé est donc de créer une branche pour votre travail.
   
   Procédure (à réaliser dans votre fork) :
   - Récupérer la version la plus récente de la branche `develop` du dépôt actuel vers votre dépôt
   - Ouvrir un ticket pour détailler ce que vous allez faire (ou répondre au ticket existant le cas échant).
   - Une fois votre code écrit, l'envoyer sur votre fork (`git push`) et une fois votre modification terminée, 
     créer une pull request vers la branche `develop` pour proposer vos modifications (pensez à lier votre pull-request au ticket correspondant). 

Vous voilà prêt à contribuer !


## Je ne sais pas comment aider

Ce n'est pas un problème ! Lorsque nous avons des fonctionnalités ou des problèmes de petite envergure,
nous les marquons "easy", ce qui signifie que cette tâche est accessible aux nouveaux contributeurs. Allez dans la
liste des issues pour découvrir ce que vous pourriez faire. N'hésitez pas à bien lire toute l'issue pour vérifier que personne ne travaille déjà sur la tâche.


## J'ai fini mes modifications, je voudrais les proposer

Maintenant que vous avez terminé votre travail, vous devez simplement le "pusher" sur votre "fork" et créer une
pull request sur le repository principal.

Lorsque vous ouvrirez cette pull request, il est possible (prochainement) que certains tests et d'autres outils soient automatiquement lancés
pour tester, analyser et vérifier votre code (ce processus s'appelle l'intégration continue).

Si les tests automatisés ne se passent pas correctement alors vous devez corriger votre code. Vous pouvez cliquer sur "Details" pour
comprendre le problème. Pour réenvoyer du code dans la pull request, réexécutez simplement un push sur la même branche sur votre fork.

Une fois votre code prêt et qu'il passe avec succès les différents tests humains et automatisés, votre pull-request sera acceptée et votre travail sera intégré à notre branche `develop` en attente pour la prochaine mise en ligne (le site est synchronisé sur la branche `main`).
