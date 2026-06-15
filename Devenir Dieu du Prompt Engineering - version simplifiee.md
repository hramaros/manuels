# Devenir un dieu du Prompt Engineering

J'ai commence a travailler en debut d'annee avec une confiance presque naive.

Apres tout, j'utilisais les intelligences artificielles generatives depuis plusieurs annees. ChatGPT faisait deja partie de mon quotidien. Je pensais comprendre ces outils. Je pensais savoir comment leur parler. Je pensais etre pret.

Puis un projet est arrive.

Notre mission etait ambitieuse : transformer des images, des documents PDF et des pages web en donnees exploitables grace aux grands modeles de langage, aussi appeles LLM.

Je rejoignais l'equipe comme architecte en automatisation. Deux collegues experimentes travaillaient deja sur le sujet. Mon role etait d'apporter un regard neuf, de proposer des ameliorations et de contribuer a la reussite du projet.

Au lieu de cela, j'ai commis une erreur.

Une erreur qui a coute 8 dollars a l'entreprise.

Pour beaucoup de personnes, 8 dollars, ce n'est pas grand-chose. Pour une entreprise, c'est presque invisible dans un tableau Excel.

Mais pour moi, ces 8 dollars avaient une autre valeur.

Ils representaient presque une semaine de ration lorsque je vivais encore avec un budget etudiant.

Je me souviens du sentiment qui m'a traverse a cet instant. C'etait comme un enfant qui vient de casser une assiette preferee de sa mere. Ce n'est pas le prix de l'assiette qui fait mal. C'est la prise de conscience.

J'avais passe plus de trois ans a utiliser les IA generatives.

Et pourtant, je ne les comprenais pas vraiment.

Je savais obtenir des reponses.

Je ne savais pas encore obtenir des resultats.

Cette difference a change ma facon de travailler.

A partir de ce jour, j'ai decide d'etudier serieusement ce qui se cache derriere un bon prompt. J'ai lu des documentations, analyse des recherches, teste des centaines d'experiences, compare des modeles, et remis en question ce que je croyais savoir.

Tres vite, une idee simple s'est imposee :

La plupart des utilisateurs traitent les LLM comme des moteurs de recherche ameliores. Ils posent une question, croisent les doigts, puis esperent que le petit robot sorte une pepite au lieu d'une soupe tiede.

Les experts, eux, les traitent comme des collaborateurs numeriques. Ils leur donnent un contexte, un role, des contraintes, des objectifs et des criteres de reussite.

Voila pourquoi certaines personnes obtiennent des resultats mediocres apres cinq essais, pendant que d'autres obtiennent une reponse solide des la premiere tentative.

Ce manuel est ne de cette decouverte.

Son objectif n'est pas de te donner trois formules magiques a copier-coller.

Son objectif est de t'apprendre a penser comme un architecte de prompts.

A la fin de cette lecture, tu ne verras plus l'IA comme une boite magique qui repond a tout avec une voix tranquille, meme quand elle improvise en chaussettes.

Tu comprendras ses forces.

Tu comprendras ses limites.

Et surtout, tu sauras construire des instructions qui transforment une intelligence artificielle en veritable partenaire de travail.

Si ce manuel t'evite quelques erreurs, alors les 8 dollars que j'ai perdus auront peut-etre ete le meilleur investissement de ma carriere.

Et si le meilleur moment pour apprendre le prompt engineering etait hier, le deuxieme meilleur moment, c'est maintenant.

## Table des matieres

- Avant de commencer : parler clairement a l'IA
- 1. Pourquoi les prompts sont devenus importants
- 2. Le probleme principal : l'ambiguite
- 3. La methode CO-STAR : la recette du bon prompt
- 4. Exemple simple avec CO-STAR
- 5. Autres petites formules utiles
- 6. Faire raisonner l'IA pas a pas
- 7. Eviter les hallucinations
- 8. Demander des reponses bien rangees
- 9. Les agents IA : travailler en equipe
- 10. ReAct : reflechir, agir, observer
- 11. Juger la qualite d'une reponse IA
- 12. Ce que les entreprises font deja avec l'IA
- 13. Programme d'entrainement simplifie
- 14. Les modeles de prompts a garder
- 15. Les erreurs frequentes a eviter
- 16. La grande idee a retenir
- Conclusion
- Quatrieme de couverture

## Avant de commencer : parler clairement a l'IA

Tu n'as pas besoin d'etre ingenieur, mathematicien ou expert en intelligence artificielle pour bien utiliser une IA.

Ce qu'il te faut surtout, c'est apprendre a parler clairement a la machine.

Un prompt, c'est simplement une consigne donnee a une IA. C'est comme une commande passee a quelqu'un qui peut beaucoup t'aider, mais qui a besoin qu'on lui explique precisement ce qu'on attend.

Imagine que tu demandes a quelqu'un :

> "Prepare-moi quelque chose a manger."

La personne peut te faire une salade, un sandwich, une soupe ou un gateau. Elle ne sait pas vraiment ce que tu veux.

Maintenant imagine que tu dis :

> "Prepare-moi un sandwich au poulet, simple, sans sauce piquante, pour un repas rapide ce midi."

La, c'est beaucoup plus clair.

Avec l'IA, c'est pareil. Plus ta demande est claire, plus la reponse a des chances d'etre utile.

Le prompt engineering, c'est donc l'art de donner de bonnes consignes a une IA.

Pas pour faire joli.

Mais pour obtenir une reponse claire, utile, fiable et adaptee a ton besoin.

Petit clin d'oeil du robot : si tu lui donnes une consigne floue, il ne va pas lever la main en disant "je suis perdu". Il va souvent improviser avec beaucoup d'assurance. Et parfois, cette assurance a le gout d'un plat sans sel.


## 1. Pourquoi les prompts sont devenus importants

Avant, beaucoup de gens utilisaient l'IA comme un jouet :

> "Ecris-moi un poeme."

> "Donne-moi une idee de business."

> "Explique-moi ce sujet."

Aujourd'hui, dans les entreprises, l'IA sert a faire des choses beaucoup plus serieuses :

- aider un service client ;
- resumer des contrats ;
- analyser des donnees ;
- ecrire du code ;
- preparer des rapports ;
- aider des medecins, juristes, commerciaux ou recruteurs.

Quand l'IA est utilisee dans ce genre de situation, une mauvaise reponse peut couter cher.

Elle peut faire perdre du temps.

Elle peut donner une information fausse.

Elle peut creer un document mal structure.

Elle peut dire quelque chose qui ne respecte pas les regles d'une entreprise.

C'est pour cela qu'un bon prompt est important. Il sert de barriere de securite. Il aide l'IA a rester dans le bon chemin.

Tu peux voir le prompt comme un GPS.

Si tu mets seulement "Paris", le GPS ne sait pas exactement ou aller.

Si tu mets une adresse precise, il peut te guider correctement.

Avec l'IA, une consigne vague donne souvent une reponse vague. Une consigne precise donne souvent une reponse plus solide.

C'est rassurant, au fond : tu n'as pas besoin de devenir une machine. Tu dois seulement apprendre a donner une meilleure adresse au GPS.


## 2. Le probleme principal : l'ambiguite

L'ambiguite, c'est quand une phrase peut etre comprise de plusieurs manieres.

Par exemple :

> "Fais-moi un rapport court."

Mais "court", ca veut dire quoi ?

- 5 lignes ?
- 1 page ?
- 3 paragraphes ?
- un resume en bullet points ?

L'IA ne sait pas ce que tu as dans la tete. Elle devine.

Et quand elle devine, elle peut se tromper.

C'est ce que le document appelle la "taxe d'ambiguite". En langage simple, cela veut dire :

> Plus ta demande est floue, plus tu paies en temps perdu.

Tu dois relancer l'IA, corriger, redemander, reformuler. C'est fatigant. Et surtout, ca casse ton elan.

La solution, c'est d'utiliser une structure simple.

Et si tu t'es deja retrouve a ecrire "non, ce n'est pas ca..." trois fois de suite a une IA, bienvenue au club. C'est presque un rite de passage. La bonne nouvelle, c'est qu'on peut en sortir.


## 3. La methode CO-STAR : la recette du bon prompt

CO-STAR est une methode pour construire une demande claire.

C'est comme une recette de cuisine. Si tu oublies des ingredients, le resultat peut etre bizarre.

Demander une bonne reponse sans contexte, c'est un peu comme demander un gateau sans dire s'il faut du chocolat, de la vanille ou juste sauver un anniversaire a 17 h 58.

CO-STAR veut dire :

- C : Contexte
- O : Objectif
- S : Style
- T : Ton
- A : Audience
- R : Reponse attendue

Voici chaque partie en langage simple.

### C comme Contexte

Le contexte, c'est la situation.

Tu expliques a l'IA ou elle se trouve, ce qu'elle doit savoir, et pourquoi tu lui demandes cela.

Exemple :

> Je prepare une formation pour des debutants qui ne connaissent pas l'intelligence artificielle.

Sans contexte, l'IA repond dans le vide.

Avec le contexte, elle comprend mieux le decor.

### O comme Objectif

L'objectif, c'est ce que tu veux obtenir.

Exemple :

> Je veux un resume simple qui explique les 5 idees principales.

L'objectif doit etre clair. L'IA doit pouvoir comprendre ce qu'elle doit faire.

### S comme Style

Le style, c'est la forme.

Tu peux demander :

- un guide pratique ;
- une fiche de revision ;
- une liste d'etapes ;
- un tableau ;
- un message LinkedIn ;
- un email ;
- une histoire ;
- une explication pour debutants.

Le style donne une forme au resultat.

### T comme Ton

Le ton, c'est l'emotion du texte.

Tu peux demander un ton :

- rassurant ;
- professionnel ;
- chaleureux ;
- direct ;
- simple ;
- motivant ;
- calme ;
- enthousiaste.

Le ton change beaucoup la sensation de lecture.

Un meme message peut sembler froid ou humain selon le ton demande.

### A comme Audience

L'audience, c'est la personne qui va lire.

Tu dois dire pour qui la reponse est faite :

- enfants ;
- adultes debutants ;
- experts ;
- clients ;
- collegues ;
- dirigeants ;
- personnes pressees ;
- personnes qui ont peur de la technologie.

Cela aide l'IA a choisir les bons mots.

On ne parle pas pareil a un expert informatique et a une personne qui decouvre l'IA pour la premiere fois.

### R comme Reponse attendue

Ici, tu dis le format voulu.

Exemples :

- "Reponds en 5 points."
- "Fais un tableau."
- "Donne une version courte puis une version detaillee."
- "Utilise du Markdown."
- "Donne uniquement du JSON."

Le format evite les surprises.

C'est l'equivalent de dire : "range-moi ca dans cette boite, pas dans un sac de courses troue."


## 4. Exemple simple avec CO-STAR

Demande vague :

> Explique le prompt engineering.

Demande avec CO-STAR :

```text
Contexte : Je prepare un atelier pour des adultes debutants qui ont deja entendu parler de ChatGPT, mais ne savent pas bien l'utiliser.

Objectif : Explique ce qu'est le prompt engineering et pourquoi c'est utile.

Style : Guide simple avec exemples concrets.

Ton : Chaleureux, rassurant, motivant.

Audience : Grand public, niveau debutant.

Reponse : Fais 5 sections courtes avec une analogie dans chaque section.
```

La deuxieme demande est beaucoup plus forte.

Elle donne une route a l'IA.

Elle ne lui dit pas seulement "avance". Elle lui donne une carte.

Et crois-moi, une IA avec une carte fait beaucoup moins de tourisme sauvage dans ta reponse.


## 5. Autres petites formules utiles

CO-STAR est tres complet. Mais parfois, tu n'as pas besoin d'une grande structure.

Tu peux utiliser des formules plus courtes.

### RTF : Role, Tache, Format

C'est la formule rapide.

Tu dis :

1. Qui l'IA doit jouer.
2. Ce qu'elle doit faire.
3. Sous quelle forme elle doit repondre.

Exemple :

```text
Role : Tu es un professeur patient.
Tache : Explique la blockchain a un debutant.
Format : Donne une explication en 3 paragraphes avec une analogie simple.
```

C'est comme dire a quelqu'un :

> "Mets-toi dans la peau d'un professeur, explique-moi doucement, et donne-moi une reponse courte."

### CREATE : pour les demandes plus riches

CREATE aide quand tu veux une reponse plus precise, surtout en marketing, communication ou creation de contenu.

Tu peux penser a CREATE comme a une fiche de mission :

- qui parle ;
- ce qu'il faut produire ;
- les exemples a suivre ;
- les details a ajouter ;
- le type de sortie ;
- les contraintes.

Exemple :

```text
Tu es un community manager experimente.
Je veux une reponse a un client mecontent sur les reseaux sociaux.
Voici 2 exemples de ton que nous aimons.
Ajoute une excuse sincere, une solution concrete, et une invitation a continuer en message prive.
Format : moins de 600 caracteres.
Evite les mots : probleme, faute, impossible.
```

Cette methode est utile quand le ton compte beaucoup.

Le ton, c'est parfois la difference entre "nous comprenons votre frustration" et "cher client, veuillez patienter dans le tunnel administratif". Meme message, sensation totalement differente.


## 6. Faire raisonner l'IA pas a pas

Parfois, tu ne veux pas seulement une reponse rapide.

Tu veux que l'IA reflechisse mieux.

C'est comme en maths a l'ecole. Si quelqu'un donne seulement le resultat, tu ne sais pas s'il a compris. Mais s'il montre les etapes, tu peux voir ou il s'est trompe.

Avec l'IA, il existe plusieurs facons de l'aider a raisonner.

### Chain of Thought : penser etape par etape

Le Chain of Thought veut dire "chaine de pensee".

En simple, tu demandes a l'IA de traiter le probleme par etapes.

Exemple :

```text
Analyse ce probleme et avance etape par etape.
Commence par identifier les informations importantes.
Ensuite, explique le raisonnement.
Enfin, donne la conclusion.
```

C'est utile pour :

- les calculs ;
- les analyses ;
- les decisions difficiles ;
- les problemes avec plusieurs conditions.

Analogie :

> Monter un escalier marche par marche est plus sur que sauter directement tout en haut.

Si l'IA saute les marches, elle peut arriver vite. Mais elle peut aussi se retrouver au mauvais etage avec un grand sourire.

### Least-to-Most : commencer par le plus simple

Cette methode consiste a couper un gros probleme en petits morceaux.

Tu demandes a l'IA de commencer par la partie la plus simple, puis de continuer progressivement.

Exemple :

```text
Decoupe ce probleme en petites questions simples.
Reponds d'abord a la premiere.
Utilise cette reponse pour traiter la deuxieme.
Continue jusqu'a la conclusion finale.
```

Analogie :

> Pour ranger une piece en bazar, tu ne ranges pas tout d'un coup. Tu fais d'abord le bureau, puis le sol, puis les vetements.

Le cerveau aime les petits morceaux. L'IA aussi. Et ton niveau de stress aussi, franchement.

### Tree of Thoughts : explorer plusieurs chemins

Le Tree of Thoughts veut dire "arbre de pensees".

Au lieu de suivre une seule idee, l'IA explore plusieurs pistes.

Exemple :

```text
Propose 3 solutions differentes.
Pour chaque solution, donne les avantages, les risques et le cout.
Ensuite, choisis la meilleure solution et explique pourquoi.
```

Analogie :

> Tu es devant trois routes. Avant de choisir, tu regardes ou chaque route peut te mener.

C'est tres utile pour :

- choisir une strategie ;
- creer un produit ;
- comparer des options ;
- resoudre un probleme complexe.

### Self-Consistency : demander plusieurs essais

L'idee est simple :

> Si l'IA donne plusieurs raisonnements et que la meme conclusion revient souvent, cette conclusion est probablement plus solide.

Analogie :

> Tu demandes un avis a plusieurs personnes. Si presque tout le monde arrive a la meme conclusion, tu as plus confiance.

Ce n'est pas magique, mais c'est utile. C'est comme demander plusieurs brouillons avant de choisir celui qui tient debout.


## 7. Eviter les hallucinations

Une hallucination, avec l'IA, ce n'est pas une image bizarre.

C'est quand l'IA dit quelque chose de faux avec beaucoup d'assurance.

Et c'est dangereux, parce que le texte peut sembler credible.

Le piege, c'est la voix calme. Une IA peut inventer une information avec le calme d'un serveur qui t'annonce que "tout va tres bien", alors que la cuisine brule derriere.

L'IA peut inventer :

- une source ;
- une date ;
- un chiffre ;
- une loi ;
- un nom ;
- une citation ;
- une conclusion.

Il faut donc apprendre a lui demander de verifier.

### Chain of Verification : verifier avant de finaliser

La Chain of Verification, ou chaine de verification, consiste a faire controler les affirmations importantes.

Tu peux utiliser ce prompt :

```text
Avant de donner ta reponse finale :
1. Liste les affirmations importantes que tu vas utiliser.
2. Pour chaque affirmation, indique si elle vient du texte fourni ou si elle doit etre verifiee.
3. Signale les points incertains.
4. Donne ensuite une reponse finale prudente et corrigee.
```

Analogie :

> Avant d'envoyer un colis, tu verifies l'adresse, le contenu et le nom du destinataire. Sinon, le colis peut partir au mauvais endroit.

La verification, ce n'est pas de la paranoia. C'est mettre une ceinture de securite avant de demarrer.

### Self-Ask : laisser l'IA poser des questions

Parfois, ta demande manque d'informations.

Tu peux demander a l'IA de s'arreter et de poser les bonnes questions avant de repondre.

Exemple :

```text
Si ma demande manque d'informations importantes, pose-moi d'abord jusqu'a 3 questions simples avant de repondre.
```

C'est utile quand le sujet est flou.

### Rephrase and Respond : reformuler avant de repondre

Ici, tu demandes a l'IA de reformuler ta demande avec ses propres mots.

Exemple :

```text
Commence par reformuler ma demande en une phrase claire.
Ensuite, reponds a cette demande reformulee.
```

Analogie :

> C'est comme quand quelqu'un te dit : "Si j'ai bien compris, tu veux dire que..." Cela evite les malentendus.

Et parfois, ce petit "si j'ai bien compris" sauve une heure de travail. Ce n'est pas glamour, mais c'est efficace.


## 8. Demander des reponses bien rangees

Dans une entreprise, une reponse en texte libre ne suffit pas toujours.

Parfois, il faut une reponse rangee dans un format precis.

C'est comme remplir un formulaire.

Si le formulaire demande :

- nom ;
- date ;
- montant ;
- statut.

Tu ne dois pas repondre avec un grand paragraphe. Tu dois remplir les cases.

Avec l'IA, on peut demander ce genre de format.

### Exemple en JSON

Le JSON est un format utilise par les logiciels pour ranger les informations.

Exemple :

```json
{
  "nom_client": "Marie Dupont",
  "type_demande": "remboursement",
  "urgence": "elevee",
  "resume": "La cliente demande un remboursement pour une commande non recue."
}
```

Ce format est utile parce qu'un logiciel peut le lire facilement.

### Prompt simple pour obtenir du JSON

```text
Extrais les informations importantes du texte ci-dessous.
Reponds uniquement en JSON valide.
Utilise exactement ces champs :
- nom_client
- type_demande
- urgence
- resume

Si une information manque, mets null.
N'ajoute aucun autre champ.
```

Analogie :

> Le JSON, c'est comme une boite a compartiments. Chaque information doit aller dans le bon compartiment.

Si les donnees sont mal rangees, le logiciel peut paniquer. Et un logiciel qui panique, c'est souvent toi qui finis par paniquer aussi.


## 9. Les agents IA : travailler en equipe

Un agent IA, c'est une IA qui ne fait pas seulement repondre.

Elle peut aussi suivre une mission, utiliser des outils, chercher des informations, appeler une API, analyser un fichier, puis produire une reponse.

Quand plusieurs agents travaillent ensemble, on parle de systeme multi-agents.

Imagine une equipe dans une entreprise :

- une personne analyse les chiffres ;
- une autre regarde les risques ;
- une autre verifie la loi ;
- une autre fait la synthese finale.

Avec les agents IA, on peut faire la meme chose.

Tu peux imaginer une petite equipe dans ton ordinateur. Pas des humains miniatures, malheureusement, mais des roles bien separes : chacun sa mission, chacun son tablier.

### Systeme en ligne droite

Chaque agent travaille apres le precedent.

Exemple :

1. Agent 1 : ecrit un brouillon.
2. Agent 2 : verifie les erreurs.
3. Agent 3 : ameliore le style.
4. Agent 4 : donne la version finale.

Analogie :

> C'est comme une chaine de montage.

### Systeme en parallele

Plusieurs agents travaillent en meme temps sur le meme sujet.

Exemple :

- un agent regarde les avantages ;
- un agent regarde les risques ;
- un agent regarde le cout ;
- un agent fait la synthese.

Analogie :

> C'est comme demander a plusieurs specialistes de regarder le meme probleme avec leurs lunettes differentes.

### Systeme chef de projet

Un agent central joue le role de chef.

Il decoupe le travail, distribue les missions, recupere les resultats, puis fait la synthese.

Analogie :

> C'est comme un chef de cuisine qui dit a chacun quoi preparer, puis assemble l'assiette finale.

Sans chef, tout le monde peut travailler fort et finir avec trois desserts, zero plat principal, et une reunion qui sent la confusion.


## 10. ReAct : reflechir, agir, observer

ReAct veut dire que l'agent alterne entre :

- reflechir ;
- agir ;
- observer le resultat ;
- corriger si besoin.

Exemple simple :

1. L'agent se dit : "Je dois trouver une information recente."
2. Il utilise un outil de recherche.
3. Il lit le resultat.
4. Il ajuste sa reponse.

Analogie :

> Quand tu cuisines, tu ne suis pas seulement la recette. Tu gouttes, tu ajustes le sel, tu surveilles la cuisson.

Un bon agent IA fait pareil : il avance, regarde ce qui se passe, puis corrige.

C'est une bonne lecon pour nous aussi : on n'a pas besoin d'avoir tout juste du premier coup. On avance, on observe, on ajuste.


## 11. Juger la qualite d'une reponse IA

Dans une entreprise, on ne peut pas se contenter de dire :

> "Cette reponse me semble bonne."

Il faut des criteres.

On peut demander a une IA de juger une autre reponse. C'est ce qu'on appelle parfois "LLM-as-a-Judge".

En simple :

> Une IA joue le role de correcteur.

Mais il faut lui donner une grille claire.

### Exemple de grille simple

Au lieu de noter de 1 a 10, on peut utiliser des categories :

- Correct : la reponse est utile et respecte la demande.
- A corriger : la reponse est partiellement bonne, mais il manque des choses.
- Risquee : la reponse contient des erreurs ou des affirmations non verifiees.
- Echec : la reponse ne repond pas a la demande.

Cette methode est plus claire qu'une note vague.

### Les questions a poser pour juger

Une bonne evaluation peut demander :

- Est-ce que la reponse repond vraiment a la question ?
- Est-ce qu'elle respecte le contexte donne ?
- Est-ce qu'elle invente des faits ?
- Est-ce qu'elle est complete ?
- Est-ce que le format demande est respecte ?

Analogie :

> C'est comme corriger une copie avec une grille. Tu ne dis pas seulement "c'est bien" ou "c'est nul". Tu regardes des criteres precis.

Sans grille, on juge au feeling. Et le feeling, c'est tres bien pour choisir une musique. Pour valider une reponse IA, c'est un peu leger.


## 12. Ce que les entreprises font deja avec l'IA

Le document donne plusieurs exemples d'entreprises qui utilisent l'IA pour gagner du temps.

Voici l'idee, en version simple.

Le but ici n'est pas de te faire croire que l'IA est une baguette magique. Le but est de te montrer qu'avec de bonnes consignes, elle peut devenir un vrai levier de travail.

### Finance et fiscalite

Certains cabinets utilisent l'IA pour aider a preparer des conseils fiscaux.

Avant, une premiere version pouvait prendre des jours ou des semaines.

Avec une IA bien guidee, certaines etapes peuvent etre faites beaucoup plus vite.

Mais attention : l'humain doit encore verifier. L'IA aide, elle ne remplace pas la responsabilite.

### Service client

Des entreprises utilisent des chatbots pour repondre aux clients.

Quand le prompt est bien construit, le chatbot peut repondre vite, clairement, et parfois avec plus de regularite qu'un humain fatigue ou presse.

Le secret n'est pas seulement la technologie.

Le secret, c'est aussi la qualite des consignes donnees a l'IA.

### Recrutement

L'IA peut aider a rediger des messages pour inviter des candidats a postuler.

Un bon message peut donner envie.

Un mauvais message peut faire fuir.

La difference se joue souvent dans le ton, la clarte et la personnalisation.

### Magasins et support interne

Dans certains magasins, les vendeurs peuvent utiliser une IA pour obtenir rapidement des conseils techniques.

Cela peut transformer un employe generaliste en conseiller plus competent.

Analogie :

> C'est comme avoir un manuel vivant dans la poche.


## 13. Programme d'entrainement simplifie

Pour devenir bon, il ne suffit pas de lire.

Il faut pratiquer.

Voici un parcours simple en 10 exercices.

Ne cherche pas a tout reussir du premier coup. Ici, se tromper fait partie de l'entrainement. Meme les bons prompt engineers ont deja ecrit des consignes tellement longues qu'on aurait pu les plier en quatre et les envoyer par colis.

### Exercice 1 : transformer une demande floue

Prends cette demande :

> Analyse ce rapport de ventes.

Reecris-la avec CO-STAR.

Ajoute :

- le contexte ;
- l'objectif ;
- le style ;
- le ton ;
- l'audience ;
- le format attendu.

But : apprendre a enlever le flou.

Petit sourire de debutant : si ton premier prompt ressemble a "fais un truc bien", ce n'est pas grave. On commence tous quelque part.

### Exercice 2 : controler le ton

Demande a l'IA d'ecrire une reponse a un client mecontent.

Ajoute :

- le ton souhaite ;
- les mots interdits ;
- la longueur maximale ;
- un exemple de bonne reponse.

But : comprendre que le style se pilote.

Tu vas voir : changer le ton d'une reponse, c'est comme changer la lumiere dans une piece. Le contenu reste la, mais l'ambiance change completement.

### Exercice 3 : faire raisonner etape par etape

Donne a l'IA un probleme avec plusieurs informations.

Demande-lui de :

1. reperer les donnees importantes ;
2. expliquer les etapes ;
3. donner la conclusion.

But : eviter les reponses trop rapides.

### Exercice 4 : comparer plusieurs solutions

Choisis un probleme :

> Comment lancer une petite formation en ligne ?

Demande a l'IA 3 strategies differentes, avec avantages, risques et couts.

But : apprendre a explorer plusieurs chemins.

### Exercice 5 : verifier les faits

Donne un texte a resumer.

Demande a l'IA de lister les affirmations importantes, puis de dire lesquelles sont certaines et lesquelles sont incertaines.

But : reduire les inventions.

### Exercice 6 : obtenir un format propre

Donne un email client a l'IA.

Demande-lui d'extraire les informations en JSON :

- nom ;
- besoin ;
- urgence ;
- prochaine action.

But : apprendre a produire des donnees utilisables.

### Exercice 7 : creer une mini-equipe d'agents

Demande a l'IA de jouer 3 roles :

- analyste ;
- critique ;
- redacteur final.

Chaque role doit donner sa contribution.

But : comprendre la logique multi-agents.

### Exercice 8 : retrouver les passages importants

Donne un long texte.

Demande a l'IA de citer les sections utiles avant de faire la synthese.

But : eviter qu'elle resume au hasard.

### Exercice 9 : creer un juge

Demande a l'IA de corriger une reponse selon une grille :

- correct ;
- a corriger ;
- risque ;
- echec.

But : apprendre a evaluer une reponse.

### Exercice 10 : couper un prompt trop lourd

Prends une consigne tres longue.

Divise-la en 3 prompts :

1. comprendre la demande ;
2. extraire les informations ;
3. produire la reponse finale.

But : apprendre que parfois, plusieurs petites demandes valent mieux qu'une enorme consigne.

Quand un prompt devient un meuble IKEA sans notice, coupe-le en morceaux. Tout le monde respirera mieux, toi compris.


## 14. Les modeles de prompts a garder

Voici des modeles simples que tu peux reutiliser.

Garde-les comme une petite trousse de secours. Le jour ou ton cerveau affiche "mise a jour en cours", ces modeles t'aideront a redemarrer.

### Modele CO-STAR

```text
Contexte :
[Explique la situation.]

Objectif :
[Dis exactement ce que tu veux obtenir.]

Style :
[Guide, tableau, liste, email, fiche, script, etc.]

Ton :
[Simple, chaleureux, professionnel, direct, rassurant, etc.]

Audience :
[Dis pour qui la reponse est faite.]

Reponse attendue :
[Precise le format, la longueur et les contraintes.]
```

### Modele pour simplifier un texte

```text
Simplifie le texte ci-dessous pour un lecteur grand public.
Utilise des phrases courtes.
Evite le jargon.
Explique les mots difficiles.
Ajoute des analogies simples.
Adresse-toi directement au lecteur avec un ton humain et rassurant.
Garde les idees importantes sans ajouter de faits inventes.
```

### Modele pour verifier une reponse

```text
Verifie cette reponse.
Dis :
1. ce qui est correct ;
2. ce qui est flou ;
3. ce qui pourrait etre faux ;
4. ce qu'il faut corriger ;
5. une version finale plus fiable.
```

### Modele pour comparer des options

```text
Propose 3 options differentes.
Pour chaque option, donne :
- les avantages ;
- les risques ;
- le niveau de difficulte ;
- le temps necessaire ;
- la meilleure situation pour l'utiliser.

Puis recommande l'option la plus adaptee.
```

### Modele pour obtenir une reponse structuree

```text
Reponds uniquement dans ce format :

Titre :
Resume en 3 lignes :
Points importants :
Actions conseillees :
Risques :
Conclusion :

N'ajoute aucune autre section.
```


## 15. Les erreurs frequentes a eviter

Cette section n'est pas la pour te gronder.

Elle est la pour te faire gagner du temps.

Si tu reconnais une de tes erreurs, souris un peu : cela veut dire que tu es exactement en train d'apprendre.

### Erreur 1 : demander quelque chose de trop vague

Mauvais :

> Fais-moi un bon texte.

Meilleur :

> Ecris un texte de 300 mots pour expliquer notre service a des debutants, avec un ton rassurant et 3 exemples concrets.

La premiere version dit : "surprends-moi". La deuxieme dit : "aide-moi vraiment".

### Erreur 2 : oublier le lecteur

Un texte pour un expert n'est pas un texte pour un debutant.

Dis toujours a l'IA qui va lire.

### Erreur 3 : ne pas donner le format

Si tu veux un tableau, demande un tableau.

Si tu veux une liste, demande une liste.

Si tu veux une reponse courte, donne une limite.

### Erreur 4 : croire l'IA sans verifier

L'IA peut se tromper.

Elle peut parler avec confiance meme quand elle invente.

Pour les sujets importants, demande toujours une verification.

### Erreur 5 : tout mettre dans un seul prompt

Quand une demande devient trop grande, coupe-la.

Un gros sac difficile a porter devient plus simple quand tu le divises en plusieurs petits sacs.

Et oui, c'est moins impressionnant qu'un prompt geant. Mais souvent, c'est beaucoup plus efficace.


## 16. La grande idee a retenir

Le prompt engineering n'est pas de la magie.

C'est une methode de communication.

Tu apprends a dire clairement :

- ou tu veux aller ;
- ce que tu veux obtenir ;
- pour qui la reponse est faite ;
- dans quel style ;
- avec quelles limites ;
- sous quel format.

Une IA peut etre tres puissante, mais elle a besoin d'un bon cadre.

Sans cadre, elle improvise.

Avec un bon cadre, elle devient un vrai outil de travail.

Tu peux voir l'IA comme un assistant tres rapide, mais pas toujours prudent.

Ton prompt, c'est la main sur le volant.

Plus tu conduis clairement, plus le trajet devient utile, calme et efficace.

Et si tu rates un virage, ce n'est pas la fin du monde. Tu corriges, tu reformules, tu reprends la route.


## Conclusion

Si tu debutes, ne cherche pas a tout maitriser d'un coup.

Commence simplement :

1. Donne le contexte.
2. Dis l'objectif.
3. Precise le lecteur.
4. Demande un format.
5. Fais verifier les points importants.

Rien qu'avec cela, tes resultats vont deja beaucoup s'ameliorer.

Et surtout, rappelle-toi ceci :

> Tu n'as pas besoin de parler comme une machine pour utiliser une IA.

Tu dois seulement apprendre a etre clair, precis et humain.

C'est la vraie force d'un bon prompt.

Le meilleur moment pour maitriser ces outils etait peut-etre hier.

Le deuxieme meilleur moment, c'est maintenant.

Et cette fois, tu n'es pas seul face au petit robot.


## Quatrieme de couverture

Et si la difference entre une IA decevante et une IA vraiment utile ne venait pas de la machine, mais de ta facon de lui parler ?

Ce manuel t'apprend a construire des prompts clairs, humains et efficaces. Pas avec du jargon froid. Pas avec des formules mystiques reservees a quelques experts. Mais avec des explications simples, des analogies du quotidien, des exemples reutilisables et une methode progressive.

Tu vas apprendre a :

- donner un contexte clair a l'IA ;
- formuler un objectif precis ;
- choisir le bon ton pour ton lecteur ;
- eviter les reponses floues ;
- reduire les hallucinations ;
- structurer les sorties en formats utiles ;
- utiliser des modeles de prompts que tu peux adapter tout de suite.

Ce livre est pense pour les debutants, les formateurs, les entrepreneurs, les professionnels curieux et toutes les personnes qui veulent enfin passer de "j'ai demande a l'IA" a "j'ai obtenu un vrai resultat".

L'auteur, Ramarosandratana H. Nantenaina connu sous le nom de hramaros, est formateur IA et specialiste de l'automatisation par LLM.

Passionne d'informatique et d'intelligence artificielle, il concoit des contenus pour rendre l'evolution numerique plus accessible.

Son parcours combine:
- pedagogie A.D.D.I.E
- prompt engineering avance
- automatisation par IA
- codage assiste par IA et pratique des modeles populaires comme Claude, OpenAI et Gemini.

Au cours de sa carriere professionnelle et academique, il a participe au Hackathon DigitAgro a Marseille en 2025 ce qui marque son premier pas vers le monde de l'automatisation par IA, par ailleurs au cours de ses etudes a l'ecole 42 Antananarivo il eut l'occasion de mener des formations d'initiation a l'IA, a la cybersecurite et aux outils Google avec l'association BDE 42 Antananarivo, ce qui d'un autre cote debuta sa carriere en tant que Formateur IA.

Son objectif est simple : aider chacun a comprendre l'IA sans pre-requis en informqtique, sans peur ni honte, et sans se perdre dans un labyrinthe de mots compliques.

Parce qu'une bonne consigne peut transformer une machine impressionnante en partenaire de travail.
