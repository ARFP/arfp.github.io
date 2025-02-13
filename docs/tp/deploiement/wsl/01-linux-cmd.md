---
title: "Les commandes Linux de base"
serie: "wsl"
order: 2
---

Les commandes Linux facilitent la prise en main du système d’exploitation.

En effet, bien que de nombreuses grandes distributions GNU/Linux comme Ubuntu, Debian ou Fedora proposent des interfaces utilisateur graphiques (GUI) intuitives et faciles à manipuler, les interfaces en ligne de commande (CLI) sont efficaces et font vraiment la différence.

Elles permettent en effet d’exploiter le plein potentiel de l’OS. Par exemple, avec des commandes Linux, vous pouvez réaliser en quelques secondes seulement des opérations qui pourraient nécessiter de nombreuses étapes sur une interface graphique.

Ce document répertorie les commandes GNU/Linux de base que vous vous devez de connaître.

> Note: L’interpréteur de commandes Linux est sensible à la casse. En d’autres termes, il fait une différence entre les caractères en majuscule et en minuscule. Tenez-en compte aussi bien au niveau de l’écriture des commandes que des chemins d’accès.

<iframe width="800" height="450" src="https://www.youtube.com/embed/RkGUWKsE_Ng?si=tzFbYaTncC2QTCKF" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


## 1 – La commande `ls`

La commande `ls` est la première que de nombreux utilisateurs de Linux saisissent dans leur interpréteur de commandes. Cette commande affiche par défaut le contenu du répertoire courant. Il est toutefois possible d’afficher le contenu d’un dossier spécifique en indiquant son chemin d’accès en argument.

Cette instruction a de multiples options que vous pouvez toutes découvrir avec la commande `ls –help`. 

Exemples d'options de la commande **ls**:

- **ls – l** : donne des informations sur les fichiers dans chacun des répertoires ;
- **ls – al** : liste les fichiers et répertoires avec des informations détaillées ;
- **ls -R** : affiche également le contenu des sous-répertoires.


## 2 – La commande `cd`

`cd`, pour **Change Directory**, est également une commande très utilisée sur le CLI Linux. Cette commande permet en effet de changer le répertoire courant.

Selon le répertoire dans lequel vous vous trouvez, vous aurez besoin du nom du répertoire où vous allez ou encore de son chemin d’accès complet. 


## 3 – La commande pwd

La commande « pwd » est un diminutif de *Print Working Directory*. Comme son nom l’indique, sans argument et sans flag, cette commande retourne le chemin absolu complet du répertoire de travail dans lequel on se trouve. Le résultat obtenu peut être copié pour servir à d’autres usages.


## 4 – La commande cat

Abréviation de *Concatenate*, la commande « cat » est aussi très utilisée. Si elle sert souvent à prévisualiser un fichier sans ouvrir un éditeur de texte, elle permet essentiellement de créer, d’afficher et de concaténer des fichiers en ligne de commande.

De plus, la commande `cat nomDuFichier.extension` affiche le contenu d’un fichier. Cette commande offre également d’autres options pour le traitement de textes. Elle peut par exemple afficher les numéros de ligne ou supprimer les lignes d’un fichier dans la mesure où elles sont vides.


## 5 – La commande cp

Pour copier un fichier du répertoire courant ou non, utilisez la commande « cp ». Le premier paramètre prend le nom et l’extension du fichier à copier ou encore son chemin absolu.

Le second paramètre quant à lui est le nom et l’extension du fichier de destination. Il peut également s’agir du chemin absolu du répertoire de destination. Cette commande permet de copier des répertoires grâce à l’option - r. Ces derniers se terminent par une barre oblique sous Linux (/).


## 6 – La commande mkdir

L’instruction « mkdir » pour Make Directory permet de créer un nouveau dossier dans le répertoire courant. Spécifiez le nom du nouveau répertoire et assurez-vous qu’il n’existe pas encore. Par exemple, faites « mkdir Articles/ » pour créer un répertoire nommé « Articles ».

Pour créer des répertoires avec des sous-répertoires, ajoutez le flag « -p ». Avec la commande « mkdir -p Articles/Baskets/ », vous créerez un répertoire « Articles » qui en contient un autre nommé « Baskets ».


## 7 – La commande mv

Si la commande « mv » sert principalement à déplacer des fichiers ou répertoires, elle permet également de les renommer. Comme avec « cp », il faut, à la suite de l’instruction « mv », spécifier la source et la destination.

Pour copier un dossier en entier, il vous suffira d’ajouter l’option r et d’indiquer le nom du fichier ou répertoire en argument.


## 8 – La commande rm

« rm » permet la suppression de fichiers et même d’un répertoire. Faites toutefois attention à l’usage de cette commande, car elle peut avoir des actions irréversibles.

Ajoutez le nom et l’extension d’un fichier ordinaire en paramètre pour le supprimer. La commande « rm -r » permet de supprimer des répertoires vides. Elle se comporte donc comme la commande « rmdir ».

Quant à la suppression d’un répertoire avec son contenu, ajoutez le flag force. « rm -rf Liste/ » permettrait ainsi de supprimer un répertoire nommé « Liste » avec tout son contenu.


## 9 – La commande man

Le terminal Linux a tout prévu pour vous permettre de bien utiliser chacune de ses commandes. La commande « man » affiche la page du manuel de toutes les autres commandes. Avec « man alias » par exemple, vous aurez tous les détails sur les fonctions de l’instruction « alias ».


## 10 – La commande alias, unalias

La création et la suppression d’alias est possible respectivement avec les commandes Linux « alias » et « unalias ». Avec cet OS open source, un alias est un mot qui remplace une série de commandes.

Commande Linux alias
La commande Linux « alias » définit des alias temporaires dans une section du Shell. Depuis votre interface en ligne de commande, tapez « alias ls=”ls –color=auto” » par exemple. Les sorties de « ls » seront systématiquement en couleur sans que vous ayez besoin d’utiliser le flag à chaque fois.

Cette commande prend ainsi en paramètre une chaîne clé-valeur. Sans arguments, cette commande renvoie plutôt la liste de tous les alias actifs dans la section.

Pour désactiver un alias par contre, saisissez la commande Linux « unalias » suivi de l’alias à supprimer. Vous pourriez ainsi faire un « unalias ls » pour supprimer l’alias « ls » créé.


## 11 – La commande touch

Dans le lot des principales commandes Linux, « touch » permet la création d’un fichier vierge sur un terminal de Linux. Cette commande est aussi connue pour mettre à jour les temps d’accès et de modifications des fichiers. Cette seconde fonction de la commande n’est toutefois que peu connue.


## 12 – La commande chmod

Les permissions de lecture (r), d’écriture (w) et d’exécution (x) de répertoires et de fichiers ont une grande importance sur Linux. Cette commande Linux permet de gérer et de changer ces permissions.

Pour rendre un fichier exécutable par exemple, il faut faire « chmod +x » suivi du nom du fichier concerné.


## 13 – La commande chown

Vous pouvez changer ou transférer la propriété d’un fichier à un utilisateur donné avec « chown ». Tous les fichiers sous GNU/Linux sont en effet rattachés à un user spécifique.

Cette commande prend en premier argument le nom du nouvel utilisateur et en second le nom du fichier dont on veut transférer la propriété.


## 14 – La commande ./

Si la notation « ./ » n’est pas réellement une commande, elle a une grande importance. Elle permet en effet à n’importe quel interpréteur de ligne de commande Linux l’exécution d’un fichier. Vous pourriez toutefois avoir besoin de changer la permission d’exécution avant de le faire.


## 15 – La commande exit

Comme son nom l’indique, la commande « exit » met fin à une section du Shell sur Linux. Généralement, cette commande s’accompagne aussi de la fermeture de la console Linux.


## 16 – La commande shutdown

« shutdown » permet d’éteindre une machine fonctionnant sous une distribution de Linux. Elle peut aussi la redémarrer immédiatement ou à une heure programmée. Le temps d’attente par défaut est d’une minute.

Vous pouvez toutefois utiliser le paramètre « now » avec cette commande Linux pour une mise hors tension instantanée. Indiquez plutôt « 22 : 35 » pour attendre cette heure-là avant l’extinction. Le flag « -c » quant à lui permet d’annuler une mise sous tension programmée.


## 17 – La commande locate

Pour simplifier la localisation d’un fichier ou un répertoire sur une machine Linux, il faut utiliser la commande Linux « locate ». L’ajout du flag « -i » rend la recherche insensible à la casse. Il y a de nombreuses autres options de recherche.


## 18 – La commande find

La commande « find » se comporte comme la commande « locate » à quelques différences près. La principale différence est que cette commande recherche des fichiers dans un répertoire donné. La commande permet de multiples options pour affiner la recherche.


## 19 – La commande sudo

Si vous avez un niveau intermédiaire en Linux, vous avez sans doute déjà entendu parler de la commande « sudo » pour SuperUser Do. Cette commande permet d’exécuter des tâches qui requièrent des droits administrateur ou root.

Elle vous permettra d’effectuer plusieurs opérations pouvant endommager de manière irréversible votre système Linux. Utilisez là donc de manière intelligente et réfléchie.


## 20 – La commande df

Retrouvez en Kilo octets (Ko) les détails du pourcentage d’utilisation de l’espace disque de votre système. Vous pourrez plutôt les avoir en Méga octets (Mo) avec « df -m ».


## 21 – La commande du

« du » pour Disk Usage par contre permet de connaître l’espace mémoire qu’un fichier ou répertoire occupe sur un disque. Vous pouvez ajouter le flag « -h » à la commande “du” pour avoir cette valeur en octets, Ko ou Mo.


## 22 – La commande head

La commande Linux « head » permet de visualiser les premières lignes d’un fichier texte. Si cette commande affiche les 10 premières lignes par défaut, on peut aisément modifier ce nombre à sa convenance. Avec « head -n 6 » suivi du nom et de l’extension, les 6 premières lignes du fichier s’afficheront.


## 23 – La commande diff

Vous pourrez comparer ligne par ligne deux fichiers dans un terminal Linux. La commande « diff » permet de le faire, mais elle n’affiche que les lignes qui ne concordent pas en sortie.

Cette commande est par sa fonction très utilisée par les développeurs. Pour s’en servir, il faut écrire la syntaxe de la commande et passer successivement les fichiers à comparer en paramètre.


## 24 – La commande jobs

La commande « jobs » en ligne de commande peut être utilisée pour avoir la liste de tous les programmes qui s’exécutent sur un système Linux.


## 25 – La commande top

« top » liste et affiche le nom de tous les processus en cours d’exécution sur une machine Linux avec le détail de la quantité de CPU utilisée. Cette commande est très pratique pour suivre l’utilisation des ressources du système. Elle permet aussi d’identifier les programmes qui doivent être arrêtés en cas de surconsommation.


## 26 – La commande kill

Pour arrêter un programme Linux en qui ne répond pas ou qui consomme énormément de mémoire RAM, vous pouvez utiliser la commande « kill » Cette commande est si puissante qu’elle peut être utilisée pour forcer la fermeture d’une session. Il faudra bien sûr suivre certaines indications pour bien s’en servir.


## 27 – La commande ping

Les administrateurs de réseaux informatiques connaissent très bien la commande « ping ». Cette commande permet de vérifier le statut de la connectivité à un serveur et de mesurer le temps de réponse.


## 28 – La commande wget

En ligne de commande, vous pouvez utiliser « wget » pour lancer un téléchargement sur internet. Il suffit d’ajouter le lien de téléchargement en paramètre.Cette commande permet de tout télécharger, que ce soit un site web, une vidéo ou une image.


## 29 – La commande hostname

La commande « hostname -I » vous permettra d’identifier l’adresse IP de votre réseau. Utilisée sans ce flag, elle affiche le nom de votre hôte ou réseau. Toutefois, pour utiliser cette commande, il faut disposer des droits d’utilisateur root.


## 30 – La commande uname

« uname » donne des informations intéressantes et utiles sur le système d’exploitation utilisé. Il s’agit entre autres de l’OS, du noyau et du nom de la machine.


## 31 – La commande history

Vous pouvez retrouver l’historique des commandes Linux entrées auparavant grâce à la commande « history ». Cette commande est très pratique compte tenu du fait qu’on est souvent amené à exécuter des centaines de commandes au quotidien.

La commande “history” vous permettra de retrouver jusqu’à 500 lignes de commande. En manipulant habilement les flags, vous pourrez aisément retrouver une commande particulière.


## 32 – La commande echo

La commande « echo » déplace ou ajoute des données comme du texte dans un fichier spécifique. Cette commande est l’une des plus basiques et des plus utilisées car elle permet d’avoir accès au contenu d’un fichier sans avoir à l’ouvrir.


## 33 – La commande zip, unzip et tar

Pour compresser des fichiers dans une archive zip et pour extraire des données d’un fichier zippé, il faut respectivement utiliser « zip » et « unzip ». Si vous recherchez une alternative à ces dernières, la commande « tar » est une excellente option, bien qu’elle soit plus complexe à utiliser.


## 34 – Le lot de commandes groupadd, groupmod, useradd, userdel, usermod

Ce lot de commandes est indispensable à tout administrateur système. Il permet à ce dernier de gérer chaque utilisateur présent sur son réseau. Les commandes peuvent aussi être utilisées pour limiter l’accès aux utilisateurs au contenu d’un fichier ou un répertoire spécifique.

Par exemple, utilisez la commande « useradd » pour créer un nouvel utilisateur et « passwd » pour assigner un mot de passe à ce compte. « userdel » par contre permet de supprimer un utilisateur. La commande “groupmod” elle, vous permet de modifier un groupe existant sur votre machine.


# Les bonnes astuces à utiliser sur un terminal Linux

Lorsque vous exécutez des commandes Linux, il est assez courant de se retrouver avec une console visuellement chargée. Vous pouvez utiliser la commande `clear` pour vider les messages à l’écran du terminal.

Linux propose aussi des suggestions ou auto complétions pertinentes avec la touche tabulation `TAB` du clavier. 

Vous pouvez également utiliser des raccourcis clavier :

- `Ctrl + A` pour aller au début de la ligne.
- `Ctrl + E` pour aller à la fin de la ligne.
- `Ctrl + Z` pour mettre une commande en cours d’exécution en pause.
- `Ctrl + C` pour arrêter une commande en cours d’exécution.
- `Ctrl + E` pour aller à la fin de la ligne.
- `Ctrl + S` pour bloquer le terminal.
- `Ctrl + Q` pour débloquer le terminal.

Par ailleurs, plutôt que d’exécuter des commandes Linux les unes après les autres, vous pouvez les exécuter en une seule ligne en les séparant par des « && » (la commande suivante s’exécute à condition que la précédente ait abouti).


# Conclusion

Si l’apprentissage des principales commandes Linux peut prendre un certain temps, le processus est relativement simple et assez agréable.

En effet, vous parviendrez vite à maîtriser les commandes et les principaux outils Linux. Toutefois, vous ne cesserez jamais d’apprendre et de découvrir de nouvelles choses avec ce puissant système d’exploitation.

En attendant, connaître et maîtriser les principales commandes Linux devrait grandement améliorer votre productivité et être d’une grande utilité.
