# Devenir un dieu du Prompt Engineering

### Édition enrichie

J'ai commencé à travailler en début d'année avec une confiance presque naïve. 🙂

Après tout, j'utilisais les intelligences artificielles génératives depuis plusieurs années. ChatGPT faisait déjà partie de mon quotidien. Je pensais comprendre ces outils. Je pensais savoir comment leur parler. Je pensais être prêt.

Puis un projet est arrivé.

Notre mission était ambitieuse : transformer des images, des documents PDF et des pages web en données exploitables grâce aux grands modèles de langage, aussi appelés LLM.

Je rejoignais l'équipe comme architecte en automatisation. Deux collègues expérimentés travaillaient déjà sur le sujet. Mon rôle était d'apporter un regard neuf, de proposer des améliorations et de contribuer à la réussite du projet.

Au lieu de cela, j'ai commis une erreur.

Une erreur qui a coûté 8 dollars à l'entreprise. 😳

Pour beaucoup de personnes, 8 dollars, ce n'est pas grand-chose. Pour une entreprise, c'est presque invisible dans un tableau Excel.

Mais pour moi, ces 8 dollars avaient une autre valeur.

Ils représentaient presque une semaine de ration lorsque je vivais encore avec un budget étudiant.

Je me souviens du sentiment qui m'a traversé à cet instant. C'était comme un enfant qui vient de casser une assiette préférée de sa mère. Ce n'est pas le prix de l'assiette qui fait mal. C'est la prise de conscience.

J'avais passé plus de trois ans à utiliser les IA génératives.

Et pourtant, je ne les comprenais pas vraiment.

Je savais obtenir des réponses.

Je ne savais pas encore obtenir des résultats. 😅

Cette différence a changé ma façon de travailler.

À partir de ce jour, j'ai décidé d'étudier sérieusement ce qui se cache derrière un bon prompt. J'ai lu des documentations, analysé des recherches, testé des centaines d'expériences, comparé des modèles, et remis en question ce que je croyais savoir.

Très vite, une idée simple s'est imposée :

La plupart des utilisateurs traitent les LLM comme des moteurs de recherche améliorés. Ils posent une question, croisent les doigts, puis espèrent que le petit robot sorte une pépite au lieu d'une soupe tiède.

Les experts, eux, les traitent comme des collaborateurs numériques. Ils leur donnent un contexte, un rôle, des contraintes, des objectifs et des critères de réussite.

Voilà pourquoi certaines personnes obtiennent des résultats médiocres après cinq essais, pendant que d'autres obtiennent une réponse solide dès la première tentative.

Ce manuel est né de cette découverte.

Son objectif n'est pas de te donner trois formules magiques à copier-coller.

Son objectif est de t'apprendre à penser comme un architecte de prompts.

À la fin de cette lecture, tu ne verras plus l'IA comme une boîte magique qui répond à tout avec une voix tranquille, même quand elle improvise en chaussettes.

Tu comprendras ses forces et ses limites. Et tu sauras construire des instructions qui transforment une IA en véritable partenaire de travail.

Si ce manuel t'évite quelques erreurs, alors les 8 dollars que j'ai perdus auront peut-être été le meilleur investissement de ma carrière.

Et si le meilleur moment pour apprendre le prompt engineering était hier, le deuxième meilleur moment, c'est maintenant.

## Sommaire

<div class="sommaire">
  <div class="som-ligne"><span class="som-titre">Avant de commencer : parler clairement à l'IA</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">4</span></div>
  <div class="som-ligne"><span class="som-titre">1. Pourquoi les prompts sont devenus importants</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">5</span></div>
  <div class="som-ligne"><span class="som-titre">2. Le problème principal : l'ambiguïté</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">6</span></div>
  <div class="som-ligne"><span class="som-titre">3. La méthode CO-STAR : la recette du bon prompt</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">7</span></div>
  <div class="som-ligne"><span class="som-titre">4. Exemple simple avec CO-STAR</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">9</span></div>
  <div class="som-ligne"><span class="som-titre">5. Autres formules utiles (RTF, CREATE, RACE…)</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">10</span></div>
  <div class="som-ligne"><span class="som-titre">6. Faire raisonner l'IA pas à pas</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">12</span></div>
  <div class="som-ligne"><span class="som-titre">7. Éviter les hallucinations</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">14</span></div>
  <div class="som-ligne"><span class="som-titre">8. Demander des réponses bien rangées</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">15</span></div>
  <div class="som-ligne"><span class="som-titre">9. Les agents IA : travailler en équipe</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">17</span></div>
  <div class="som-ligne"><span class="som-titre">10. ReAct : réfléchir, agir, observer</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">19</span></div>
  <div class="som-ligne"><span class="som-titre">11. Juger la qualité d'une réponse IA</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">20</span></div>
  <div class="som-ligne"><span class="som-titre">12. Ce que les entreprises font déjà avec l'IA</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">22</span></div>
  <div class="som-ligne"><span class="som-titre">13. Programme d'entraînement simplifié</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">23</span></div>
  <div class="som-ligne"><span class="som-titre">14. Les modèles de prompts à garder</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">26</span></div>
  <div class="som-ligne"><span class="som-titre">15. Les erreurs fréquentes à éviter</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">28</span></div>
  <div class="som-ligne"><span class="som-titre">16. La grande idée à retenir</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">29</span></div>
  <div class="som-ligne"><span class="som-titre">17. Boîte à outils avancée : pour aller plus loin</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">30</span></div>
  <div class="som-ligne som-conc"><span class="som-titre">Conclusion</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">31</span></div>
  <div class="som-ligne som-conc"><span class="som-titre">Quatrième de couverture</span><span class="som-fill">................................................................................................................................................</span><span class="som-page">32</span></div>
</div>


## Avant de commencer : parler clairement à l'IA

Tu n'as pas besoin d'être ingénieur, mathématicien ou expert en intelligence artificielle pour bien utiliser une IA.

Ce qu'il te faut surtout, c'est apprendre à parler clairement à la machine.

Un prompt, c'est simplement une consigne donnée à une IA. C'est comme une commande passée à quelqu'un qui peut beaucoup t'aider, mais qui a besoin qu'on lui explique précisément ce qu'on attend.

Imagine que tu demandes à quelqu'un :

> "Prépare-moi quelque chose à manger."

La personne peut te faire une salade, un sandwich, une soupe ou un gâteau. Elle ne sait pas vraiment ce que tu veux.

Maintenant imagine que tu dis :

> "Prépare-moi un sandwich au poulet, simple, sans sauce piquante, pour un repas rapide ce midi."

Là, c'est beaucoup plus clair.

Avec l'IA, c'est pareil. Plus ta demande est claire, plus la réponse a des chances d'être utile.

Le prompt engineering, c'est donc l'art de donner de bonnes consignes à une IA.

Pas pour faire joli.

Mais pour obtenir une réponse claire, utile, fiable et adaptée à ton besoin.

Petit clin d'œil du robot : si tu lui donnes une consigne floue, il ne va pas lever la main en disant "je suis perdu". Il va souvent improviser avec beaucoup d'assurance. Et parfois, cette assurance a le goût d'un plat sans sel.


## 1. Pourquoi les prompts sont devenus importants

Avant, beaucoup de gens utilisaient l'IA comme un jouet :

> "Écris-moi un poème."

> "Donne-moi une idée de business."

> "Explique-moi ce sujet."

Aujourd'hui, dans les entreprises, l'IA sert à faire des choses beaucoup plus sérieuses :

- aider un service client ;
- résumer des contrats ;
- analyser des données ;
- écrire du code ;
- préparer des rapports ;
- aider des médecins, juristes, commerciaux ou recruteurs.

Quand l'IA est utilisée dans ce genre de situation, une mauvaise réponse peut coûter cher.

Elle peut faire perdre du temps, donner une information fausse, produire un document mal structuré, ou ne pas respecter les règles d'une entreprise.

C'est pour cela qu'un bon prompt est important. Il sert de barrière de sécurité. Il aide l'IA à rester dans le bon chemin.

Tu peux voir le prompt comme un GPS.

Si tu mets seulement "Paris", le GPS ne sait pas exactement où aller.

Si tu mets une adresse précise, il peut te guider correctement.

Avec l'IA, une consigne vague donne souvent une réponse vague. Une consigne précise donne souvent une réponse plus solide.

C'est rassurant, au fond : tu n'as pas besoin de devenir une machine. Tu dois seulement apprendre à donner une meilleure adresse au GPS. 🤔


## 2. Le problème principal : l'ambiguïté

Un soir, dix minutes avant une réunion, j'ai demandé à une IA de "résumer rapidement" un rapport de trente pages. Elle m'a renvoyé deux lignes. Techniquement, c'était bien un résumé, et rapide en plus. Mais ce n'était pas ce que je voulais : il me fallait l'essentiel en une demi-page, pas un titre déguisé en synthèse. J'ai dû tout reformuler en plein stress, cette fois en précisant la longueur exacte. Rien de dramatique, mais une réunion qui commence avec dix minutes de retard parce qu'on a oublié de préciser "demi-page", ça pique un peu.

L'ambiguïté, c'est quand une phrase peut être comprise de plusieurs manières.

Par exemple :

> "Fais-moi un rapport court." 😬

Mais "court", ça veut dire quoi ?

- 5 lignes ?
- 1 page ?
- 3 paragraphes ?
- un résumé en bullet points ?

L'IA ne sait pas ce que tu as dans la tête. Elle devine.

Et quand elle devine, elle peut se tromper.

C'est ce qu'on appelle parfois la « taxe d'ambiguïté ». En langage simple, cela veut dire :

> Plus ta demande est floue, plus tu paies en temps perdu.

Tu dois relancer l'IA, corriger, redemander, reformuler. C'est fatigant. Et surtout, ça casse ton élan.

La solution, c'est d'utiliser une structure simple.

Et si tu t'es déjà retrouvé à écrire "non, ce n'est pas ça..." trois fois de suite à une IA, bienvenue au club. C'est presque un rite de passage. La bonne nouvelle, c'est qu'on peut en sortir.


## 3. La méthode CO-STAR : la recette du bon prompt

CO-STAR est une méthode pour construire une demande claire.

C'est comme une recette de cuisine. Si tu oublies des ingrédients, le résultat peut être bizarre. 😅

Demander une bonne réponse sans contexte, c'est un peu comme demander un gâteau sans dire s'il faut du chocolat, de la vanille ou juste sauver un anniversaire à 17 h 58.

CO-STAR veut dire :

- C : Contexte
- O : Objectif
- S : Style
- T : Ton
- A : Audience
- R : Réponse attendue

Voici chaque partie en langage simple.

### C comme Contexte

Le contexte, c'est la situation.

Tu expliques à l'IA où elle se trouve, ce qu'elle doit savoir, et pourquoi tu lui demandes cela.

Exemple :

> Je prépare une formation pour des débutants qui ne connaissent pas l'intelligence artificielle.

Sans contexte, l'IA répond dans le vide.

Avec le contexte, elle comprend mieux le décor.

### O comme Objectif

L'objectif, c'est ce que tu veux obtenir.

Exemple :

> Je veux un résumé simple qui explique les 5 idées principales.

L'objectif doit être clair. L'IA doit pouvoir comprendre ce qu'elle doit faire.

### S comme Style

Le style, c'est la forme.

Tu peux demander :

- un guide pratique ;
- une fiche de révision ;
- une liste d'étapes ;
- un tableau ;
- un message LinkedIn ;
- un e-mail ;
- une histoire ;
- une explication pour débutants.

Le style donne une forme au résultat.

### T comme Ton

Le ton, c'est l'émotion du texte.

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

Un même message peut sembler froid ou humain selon le ton demandé.

### A comme Audience

L'audience, c'est la personne qui va lire.

Tu dois dire pour qui la réponse est faite :

- enfants ;
- adultes débutants ;
- experts ;
- clients ;
- collègues ;
- dirigeants ;
- personnes pressées ;
- personnes qui ont peur de la technologie.

Cela aide l'IA à choisir les bons mots.

On ne parle pas pareil à un expert informatique et à une personne qui découvre l'IA pour la première fois.

### R comme Réponse attendue

Ici, tu dis le format voulu.

Exemples :

- "Réponds en 5 points."
- "Fais un tableau."
- "Donne une version courte puis une version détaillée."
- "Utilise du Markdown."
- "Donne uniquement du JSON."

Le format évite les surprises.

C'est l'équivalent de dire : "range-moi ça dans cette boîte, pas dans un sac de courses troué."


## 4. Exemple simple avec CO-STAR

Demande vague :

> Explique le prompt engineering.

Demande avec CO-STAR :

```text
Contexte : Je prépare un atelier pour des adultes débutants qui ont déjà entendu parler de ChatGPT, mais ne savent pas bien l'utiliser.

Objectif : Explique ce qu'est le prompt engineering et pourquoi c'est utile.

Style : Guide simple avec exemples concrets.

Ton : Chaleureux, rassurant, motivant.

Audience : Grand public, niveau débutant.

Réponse : Fais 5 sections courtes avec une analogie dans chaque section.
```

La deuxième demande est beaucoup plus forte.

Elle donne une route à l'IA.

Elle ne lui dit pas seulement "avance". Elle lui donne une carte.

Et crois-moi, une IA avec une carte fait beaucoup moins de tourisme sauvage dans ta réponse.


## 5. Autres formules utiles (RTF, CREATE, RACE...)

CO-STAR est très complet. Mais parfois, tu n'as pas besoin d'une grande structure.

Tu peux utiliser des formules plus courtes.

### RTF : Rôle, Tâche, Format

C'est la formule rapide.

Tu dis :

1. Qui l'IA doit jouer.
2. Ce qu'elle doit faire.
3. Sous quelle forme elle doit répondre.

Exemple :

```text
Rôle : Tu es un professeur patient.
Tâche : Explique la blockchain à un débutant.
Format : Donne une explication en 3 paragraphes avec une analogie simple.
```

C'est comme dire à quelqu'un :

> "Mets-toi dans la peau d'un professeur, explique-moi doucement, et donne-moi une réponse courte."

RTF est parfait pour les demandes rapides et directes, comme générer du code, traduire un texte ou rédiger un court message.

### CREATE : pour les demandes plus riches

CREATE aide quand tu veux une réponse plus précise, surtout en marketing, communication ou création de contenu.

Tu peux penser à CREATE comme à une fiche de mission :

- qui parle ;
- ce qu'il faut produire ;
- les exemples à suivre ;
- les détails à ajouter ;
- le type de sortie ;
- les contraintes.

Exemple :

```text
Tu es un community manager expérimenté.
Je veux une réponse à un client mécontent sur les réseaux sociaux.
Voici 2 exemples de ton que nous aimons.
Ajoute une excuse sincère, une solution concrète, et une invitation à continuer en message privé.
Format : moins de 600 caractères.
Évite les mots : problème, faute, impossible.
```

Cette méthode est utile quand le ton compte beaucoup.

Le ton, c'est parfois la différence entre "nous comprenons votre frustration" et "cher client, veuillez patienter dans le tunnel administratif". Même message, sensation totalement différente.

### RACE : pour piloter une action avec un résultat attendu

RACE veut dire **Rôle, Action, Contexte, Évaluation attendue** (en anglais : Role, Action, Context, Expectation).

C'est une cousine de RTF et CO-STAR, très utilisée dans les métiers du marketing et de la communication, quand on veut surtout insister sur **le résultat concret** attendu, pas seulement sur le format.

Tu dis :

1. **Rôle** : qui l'IA doit incarner.
2. **Action** : ce qu'elle doit faire, très concrètement.
3. **Contexte** : la situation dans laquelle elle agit.
4. **Évaluation attendue** : à quoi ressemble un bon résultat, et comment on saura que c'est réussi.

Exemple :

```text
Rôle : Tu es chargé de communication pour une petite association locale.
Action : Rédige un message d'invitation à un événement portes ouvertes.
Contexte : L'événement a lieu samedi prochain, il s'adresse à des familles du quartier qui ne connaissent pas encore l'association.
Évaluation attendue : Le message doit donner envie de venir, tenir en 5 phrases maximum, et inclure une phrase d'accroche chaleureuse.
```

La différence avec RTF, c'est ce dernier point : tu donnes un **critère de réussite**, pas juste un format. C'est un peu comme dire à quelqu'un non seulement "fais-moi ce gâteau", mais aussi "le but, c'est qu'il fasse sourire les enfants à la première bouchée".

### Et si tu croises CARE, TRACE ou d'autres acronymes ?

En lisant des articles ou des formations, tu tomberas peut-être un jour sur d'autres sigles : **CARE** (Contexte, Action, Résultat, Exemple) ou **TRACE** (Tâche, Requête, Action, Contexte, Exemple).

Pas de panique. Ce ne sont pas de nouvelles inventions magiques. Ce sont presque toujours **les mêmes briques de base**, juste réorganisées et renommées :

- qui parle ou quel rôle adopter (Rôle / Character) ;
- dans quelle situation (Contexte) ;
- quoi faire précisément (Action / Tâche / Objectif) ;
- avec quel exemple à suivre (Exemple) ;
- pour quel résultat ou format final (Évaluation / Format / Type de sortie).

Une fois que tu maîtrises CO-STAR, RTF et CREATE, tu sauras reconnaître ces briques sous n'importe quel autre nom. C'est comme apprendre à cuisiner : une fois que tu sais ce que sont un féculent, une protéine et un légume, peu importe si la recette s'appelle "bowl", "assiette équilibrée" ou "plat unique".


## 6. Faire raisonner l'IA pas à pas

Parfois, tu ne veux pas seulement une réponse rapide.

Tu veux que l'IA réfléchisse mieux.

C'est comme en maths à l'école. Si quelqu'un donne seulement le résultat, tu ne sais pas s'il a compris. Mais s'il montre les étapes, tu peux voir où il s'est trompé.

Avec l'IA, il existe plusieurs façons de l'aider à raisonner.

### Chain of Thought : penser étape par étape

Le Chain of Thought veut dire "chaîne de pensée".

En simple, tu demandes à l'IA de traiter le problème par étapes.

Exemple :

```text
Analyse ce problème et avance étape par étape.
Commence par identifier les informations importantes.
Ensuite, explique le raisonnement.
Enfin, donne la conclusion.
```

C'est utile pour :

- les calculs ;
- les analyses ;
- les décisions difficiles ;
- les problèmes avec plusieurs conditions.

Analogie :

> Monter un escalier marche par marche est plus sûr que sauter directement tout en haut.

Si l'IA saute les marches, elle peut arriver vite. Mais elle peut aussi se retrouver au mauvais étage avec un grand sourire.

**Ce que disent les chercheurs :** sur des tests de mathématiques de niveau scolaire (comme le benchmark GSM8K), demander à un modèle de "réfléchir étape par étape" améliore presque toujours le taux de bonnes réponses, parfois de manière très significative. Le gain exact dépend du modèle et de la version testée, mais la tendance est solide : un raisonnement explicite réduit les erreurs de calcul et les conclusions trop rapides.

### Least-to-Most : commencer par le plus simple

Cette méthode consiste à couper un gros problème en petits morceaux.

Tu demandes à l'IA de commencer par la partie la plus simple, puis de continuer progressivement.

Exemple :

```text
Découpe ce problème en petites questions simples.
Réponds d'abord à la première.
Utilise cette réponse pour traiter la deuxième.
Continue jusqu'à la conclusion finale.
```

Analogie :

> Pour ranger une pièce en bazar, tu ne ranges pas tout d'un coup. Tu fais d'abord le bureau, puis le sol, puis les vêtements.

Le cerveau aime les petits morceaux. L'IA aussi. Et ton niveau de stress aussi, franchement.

### Tree of Thoughts : explorer plusieurs chemins

Le Tree of Thoughts veut dire "arbre de pensées".

Au lieu de suivre une seule idée, l'IA explore plusieurs pistes.

Exemple :

```text
Propose 3 solutions différentes.
Pour chaque solution, donne les avantages, les risques et le coût.
Ensuite, choisis la meilleure solution et explique pourquoi.
```

Analogie :

> Tu es devant trois routes. Avant de choisir, tu regardes où chaque route peut te mener.

C'est très utile pour :

- choisir une stratégie ;
- créer un produit ;
- comparer des options ;
- résoudre un problème complexe.

### Self-Consistency : demander plusieurs essais

L'idée est simple :

> Si l'IA donne plusieurs raisonnements et que la même conclusion revient souvent, cette conclusion est probablement plus solide.

Analogie :

> Tu demandes un avis à plusieurs personnes. Si presque tout le monde arrive à la même conclusion, tu as plus confiance.

Ce n'est pas magique, mais c'est utile. C'est comme demander plusieurs brouillons avant de choisir celui qui tient debout.


## 7. Éviter les hallucinations

Une hallucination, avec l'IA, ce n'est pas une image bizarre.

C'est quand l'IA dit quelque chose de faux avec beaucoup d'assurance.

Et c'est dangereux, parce que le texte peut sembler crédible.

Le piège, c'est la voix calme. Une IA peut inventer une information avec le calme d'un serveur qui t'annonce que "tout va très bien", alors que la cuisine brûle derrière. 😮

L'IA peut inventer :

- une source ;
- une date ;
- un chiffre ;
- une loi ;
- un nom ;
- une citation ;
- une conclusion.

Il faut donc apprendre à lui demander de vérifier.

### Chain of Verification : vérifier avant de finaliser

La Chain of Verification, ou chaîne de vérification, consiste à faire contrôler les affirmations importantes.

Tu peux utiliser ce prompt :

```text
Avant de donner ta réponse finale :
1. Liste les affirmations importantes que tu vas utiliser.
2. Pour chaque affirmation, indique si elle vient du texte fourni ou si elle doit être vérifiée.
3. Signale les points incertains.
4. Donne ensuite une réponse finale prudente et corrigée.
```

Analogie :

> Avant d'envoyer un colis, tu vérifies l'adresse, le contenu et le nom du destinataire. Sinon, le colis peut partir au mauvais endroit.

La vérification, ce n'est pas de la paranoïa. C'est mettre une ceinture de sécurité avant de démarrer.

### Self-Ask : laisser l'IA poser des questions

Parfois, ta demande manque d'informations.

Tu peux demander à l'IA de s'arrêter et de poser les bonnes questions avant de répondre.

Exemple :

```text
Si ma demande manque d'informations importantes, pose-moi d'abord jusqu'à 3 questions simples avant de répondre.
```

C'est utile quand le sujet est flou.

### Rephrase and Respond : reformuler avant de répondre

Ici, tu demandes à l'IA de reformuler ta demande avec ses propres mots.

Exemple :

```text
Commence par reformuler ma demande en une phrase claire.
Ensuite, réponds à cette demande reformulée.
```

Analogie :

> C'est comme quand quelqu'un te dit : "Si j'ai bien compris, tu veux dire que..." Cela évite les malentendus.

Et parfois, ce petit "si j'ai bien compris" sauve une heure de travail. Ce n'est pas glamour, mais c'est efficace.


## 8. Demander des réponses bien rangées

Dans une entreprise, une réponse en texte libre ne suffit pas toujours.

Parfois, il faut une réponse rangée dans un format précis.

C'est comme remplir un formulaire.

Si le formulaire demande :

- nom ;
- date ;
- montant ;
- statut.

Tu ne dois pas répondre avec un grand paragraphe. Tu dois remplir les cases.

Avec l'IA, on peut demander ce genre de format.

### Exemple en JSON

Le JSON est un format utilisé par les logiciels pour ranger les informations.

Exemple :

```json
{
  "nom_client": "Marie Dupont",
  "type_demande": "remboursement",
  "urgence": "elevee",
  "resume": "La cliente demande un remboursement pour une commande non recue."
}
```

Ce format est utile parce qu'un logiciel peut le lire facilement. 😊

### Prompt simple pour obtenir du JSON

```text
Extrais les informations importantes du texte ci-dessous.
Réponds uniquement en JSON valide.
Utilise exactement ces champs :
- nom_client
- type_demande
- urgence
- resume

Si une information manque, mets null.
N'ajoute aucun autre champ.
```

Analogie :

> Le JSON, c'est comme une boîte à compartiments. Chaque information doit aller dans le bon compartiment.

Si les données sont mal rangées, le logiciel peut paniquer. Et un logiciel qui panique, c'est souvent toi qui finis par paniquer aussi.

### Pour aller plus loin : un JSON encore plus strict

Le prompt simple ci-dessus fonctionne bien, mais dans une vraie entreprise, on pousse souvent la rigueur encore plus loin. Voici quatre idées que tu peux ajouter, une par une, sans complexifier ta vie :

- **Donner un "contrat" exact des champs.** Au lieu de juste lister les noms de champs, tu peux préciser le type attendu pour chacun : un texte, un nombre, une vraie/fausse valeur, ou une liste fermée de choix possibles (par exemple `urgence` ne peut valoir que `"faible"`, `"moyenne"` ou `"elevee"`, jamais autre chose). C'est ce qu'on appelle un schéma, ou un "contrat de données".

- **Interdire les champs surprises.** Tu peux ajouter une phrase comme : "N'ajoute strictement aucun champ qui ne soit pas dans cette liste." Cela évite qu'une IA bien intentionnée rajoute un commentaire ou un champ "remarque" que ton logiciel ne sait pas lire.

- **Baisser la température (quand l'outil le permet).** Certaines interfaces permettent de régler un curseur appelé "température" : plus il est bas, plus l'IA répond de façon stable et prévisible ; plus il est élevé, plus elle "improvise". Pour des données destinées à un logiciel, on met ce curseur au plus bas possible.

- **Prévoir une boucle de réparation.** Si la réponse n'est pas un JSON valide (une virgule oubliée, par exemple), au lieu d'abandonner, tu peux renvoyer l'erreur à l'IA avec un message du type : "Ce JSON est invalide, voici l'erreur : [...]. Corrige uniquement la structure, sans changer le contenu." C'est une "auto-guérison" : l'IA corrige sa propre erreur de formatage.

Exemple de prompt qui combine ces idées :

```text
Extrais les informations du texte ci-dessous.
Réponds uniquement en JSON valide, sans aucun texte autour.

Schéma attendu :
- nom_client : texte
- type_demande : texte
- urgence : une seule valeur parmi "faible", "moyenne", "elevee"
- resume : texte de moins de 200 caractères

N'ajoute aucun champ qui ne figure pas dans cette liste.
Si une information manque, mets la valeur null.
```

Analogie :

> Un prompt JSON simple, c'est une boîte à compartiments. Un prompt JSON "strict", c'est la même boîte, mais avec une étiquette sur chaque compartiment qui précise ce qu'on a le droit d'y mettre — et un protocole clair pour quand quelqu'un range mal.


## 9. Les agents IA : travailler en équipe

Un agent IA, c'est une IA qui ne fait pas seulement répondre.

Elle peut aussi suivre une mission, utiliser des outils, chercher des informations, appeler une API, analyser un fichier, puis produire une réponse.

Quand plusieurs agents travaillent ensemble, on parle de système multi-agents.

Imagine une équipe dans une entreprise :

- une personne analyse les chiffres ;
- une autre regarde les risques ;
- une autre vérifie la loi ;
- une autre fait la synthèse finale.

Avec les agents IA, on peut faire la même chose.

Tu peux imaginer une petite équipe dans ton ordinateur. Pas des humains miniatures, malheureusement, mais des rôles bien séparés : chacun sa mission, chacun son tablier. 😄

### Système en ligne droite

Chaque agent travaille après le précédent.

Exemple :

1. Agent 1 : écrit un brouillon.
2. Agent 2 : vérifie les erreurs.
3. Agent 3 : améliore le style.
4. Agent 4 : donne la version finale.

Analogie :

> C'est comme une chaîne de montage.

### Système en parallèle

Plusieurs agents travaillent en même temps sur le même sujet.

Exemple :

- un agent regarde les avantages ;
- un agent regarde les risques ;
- un agent regarde le coût ;
- un agent fait la synthèse.

Analogie :

> C'est comme demander à plusieurs spécialistes de regarder le même problème avec leurs lunettes différentes.

### Système chef de projet

Un agent central joue le rôle de chef.

Il découpe le travail, distribue les missions, récupère les résultats, puis fait la synthèse.

Analogie :

> C'est comme un chef de cuisine qui dit à chacun quoi préparer, puis assemble l'assiette finale.

Sans chef, tout le monde peut travailler fort et finir avec trois desserts, zéro plat principal, et une réunion qui sent la confusion.

### Les filets de sécurité d'une équipe d'agents

Quand une équipe d'agents IA tourne en continu dans une entreprise (et pas seulement pour un test ponctuel), il faut prévoir ce qui se passe **quand un agent plante, répond trop lentement, ou part dans le mur**. Trois filets de sécurité reviennent tout le temps :

- **Le délai maximum (timeout).** On donne à chaque agent une limite de temps. S'il ne répond pas avant, on n'attend pas indéfiniment : on passe à un plan B. C'est comme donner 10 minutes à un collègue pour répondre à un mail urgent, plutôt que d'attendre toute la journée sans rien faire d'autre.

- **Les nouvelles tentatives (retries).** Si un agent échoue une fois, ce n'est pas forcément grave : on lui redonne une chance, parfois en attendant un peu plus longtemps à chaque essai (par exemple 2 secondes, puis 4, puis 8). C'est comme rappeler quelqu'un qui n'a pas décroché, en laissant un peu plus de temps entre chaque appel.

- **Le coupe-circuit (circuit breaker).** Si un agent échoue trop souvent de suite, on arrête complètement de l'utiliser pendant un moment, plutôt que de continuer à insister dans le vide. C'est comme arrêter d'appeler un service après plusieurs échecs, et essayer une autre solution en attendant que ça revienne à la normale.

Tu n'as pas besoin de configurer toi-même ces mécanismes pour commencer. Mais si tu entends parler de "timeout", "retry" ou "circuit breaker" dans une équipe technique, tu sauras maintenant que ce sont simplement des règles de bon sens pour qu'une équipe d'agents reste fiable, même quand un de ses membres a une mauvaise journée. 😅


## 10. ReAct : réfléchir, agir, observer

ReAct veut dire que l'agent alterne entre :

- réfléchir ;
- agir ;
- observer le résultat ;
- corriger si besoin.

Exemple simple :

1. L'agent se dit : "Je dois trouver une information récente."
2. Il utilise un outil de recherche.
3. Il lit le résultat.
4. Il ajuste sa réponse.

Analogie :

> Quand tu cuisines, tu ne suis pas seulement la recette. Tu goûtes, tu ajustes le sel, tu surveilles la cuisson.

Un bon agent IA fait pareil : il avance, regarde ce qui se passe, puis corrige.

C'est une bonne leçon pour nous aussi : on n'a pas besoin d'avoir tout juste du premier coup. On avance, on observe, on ajuste.


## 11. Juger la qualité d'une réponse IA

Dans une entreprise, on ne peut pas se contenter de dire :

> "Cette réponse me semble bonne."

Il faut des critères.

On peut demander à une IA de juger une autre réponse. C'est ce qu'on appelle parfois "LLM-as-a-Judge". 🤔

En simple :

> Une IA joue le rôle de correcteur.

Mais il faut lui donner une grille claire.

### Exemple de grille simple

Au lieu de noter de 1 à 10, on peut utiliser des catégories :

- Correct : la réponse est utile et respecte la demande.
- À corriger : la réponse est partiellement bonne, mais il manque des choses.
- Risquée : la réponse contient des erreurs ou des affirmations non vérifiées.
- Échec : la réponse ne répond pas à la demande.

Cette méthode est plus claire qu'une note vague. Les chiffres de 1 à 10 ont un défaut connu : les évaluateurs (humains ou IA) ont tendance à se regrouper autour de 6, 7 ou 8, presque par réflexe. Des catégories nommées forcent à trancher.

### Les questions à poser pour juger

Une bonne évaluation peut demander :

- Est-ce que la réponse répond vraiment à la question ?
- Est-ce qu'elle respecte le contexte donné ?
- Est-ce qu'elle invente des faits ?
- Est-ce qu'elle est complète ?
- Est-ce que le format demandé est respecté ?

Analogie :

> C'est comme corriger une copie avec une grille. Tu ne dis pas seulement "c'est bien" ou "c'est nul". Tu regardes des critères précis.

Sans grille, on juge au feeling. Et le feeling, c'est très bien pour choisir une musique. 😂 Pour valider une réponse IA, c'est un peu léger.

### Le vocabulaire des pros de l'évaluation

Si tu travailles un jour avec une équipe technique, tu entendras peut-être des noms plus précis pour ces mêmes questions. Voici le décodeur :

| Question simple | Nom technique | Ce que ça vérifie |
|---|---|---|
| Est-ce qu'elle invente des faits ? | **Faithfulness** (fidélité) | La réponse ne dit que ce qui est soutenu par le contexte fourni, sans rien ajouter. |
| Est-ce qu'elle répond vraiment à la question ? | **Answer Relevancy** (pertinence) | La réponse correspond bien à ce qui a été demandé, sans partir hors sujet. |
| Est-ce que les documents retrouvés sont utiles ? | **Contextual Relevancy** | Pour les systèmes qui recherchent des documents avant de répondre (RAG) : les documents trouvés sont-ils les bons ? |
| Est-ce que l'agent a bien utilisé ses outils ? | **Tool Correctness** | Pour les agents qui appellent des outils ou des API : les bons outils, avec les bons paramètres. |

Ce ne sont pas des concepts différents de ceux que tu viens d'apprendre : juste les noms que tu retrouveras dans la documentation technique.

### Et qui juge le juge ?

Une dernière idée importante : un juge IA n'est pas infaillible. De temps en temps, il faut vérifier que ses verdicts ressemblent à ceux d'un humain qui ferait la même évaluation.

En pratique, on prend un échantillon de réponses, on les fait évaluer à la fois par l'IA-juge et par une personne, puis on compare. Si les deux sont presque toujours d'accord, on peut faire confiance au juge IA pour le reste. S'ils sont souvent en désaccord, la grille de notation doit être revue.

Analogie :

> C'est comme former un nouveau correcteur de copies. Au début, on compare ses notes à celles d'un professeur expérimenté. S'ils tombent d'accord la plupart du temps, on peut lui laisser plus d'autonomie.


## 12. Ce que les entreprises font déjà avec l'IA

Voici, en version simple, quelques exemples de ce que des entreprises font déjà avec des IA bien guidées. 😮

Le but ici n'est pas de te faire croire que l'IA est une baguette magique. Le but est de te montrer qu'avec de bonnes consignes, elle peut devenir un vrai levier de travail.

### Finance et fiscalité

Certains grands cabinets d'audit et de conseil ont développé des agents IA internes pour la fiscalité. L'idée : l'agent reçoit un prompt très détaillé, parfois long de plusieurs dizaines de pages, qui décrit les codes fiscaux applicables et la façon de raisonner d'un expert. À partir de là, il peut produire un premier projet de conseil fiscal.

Un travail qui prenait auparavant une à deux semaines peut, pour une première version, être ramené à une seule journée. L'expert humain garde ensuite la main pour relire, corriger et valider.

Mais attention : l'humain doit encore vérifier. L'IA aide, elle ne remplace pas la responsabilité.

### Service client

Des entreprises de services (énergie, télécoms, e-commerce...) utilisent des chatbots IA pour répondre à une grande partie des demandes clients courantes — parfois plusieurs dizaines de pourcents du volume total.

Quand le prompt est bien construit, le chatbot peut répondre vite, clairement, et parfois avec plus de régularité qu'un humain fatigué ou pressé. Certaines entreprises rapportent même un taux de satisfaction client sur les réponses de l'IA supérieur à celui des agents humains sur les mêmes types de demandes.

Le secret n'est pas seulement la technologie.

Le secret, c'est aussi la qualité des consignes données à l'IA, et le fait de garder un humain disponible pour les cas difficiles.

### Recrutement

Dans le recrutement, des plateformes d'offres d'emploi utilisent des messages générés ou optimisés par IA pour inviter des candidats à postuler à des offres qui leur correspondent.

Un bon message peut donner envie.

Un mauvais message peut faire fuir.

Des entreprises du secteur rapportent que des messages mieux ciblés et mieux rédigés augmentent à la fois le nombre de candidatures reçues et le nombre d'embauches qui en découlent. La différence se joue souvent dans le ton, la clarté et la personnalisation — exactement ce que CO-STAR et CREATE permettent de maîtriser.

### Magasins et support interne

Dans certaines grandes enseignes de bricolage ou de retail, les vendeurs disposent d'une application avec une IA capable de répondre à des questions techniques en temps réel ("quelle vis pour fixer ceci sur ce mur ?"), dans des centaines, voire des milliers de magasins.

Cela peut transformer un employé généraliste en conseiller plus compétent face au client.

Analogie :

> C'est comme avoir un manuel vivant dans la poche.

### Un mot sur ces chiffres

Tu l'auras peut-être remarqué : cette section contient des pourcentages, des durées, des nombres de magasins... et pourtant, aucune source précise n'est citée.

C'est volontaire, et c'est même le meilleur exercice pratique de tout ce manuel.

Ces exemples sont largement repris dans la presse spécialisée et les communications d'entreprises. Ils donnent un ordre de grandeur réaliste de ce que le prompt engineering permet aujourd'hui. Mais avant de les répéter dans une présentation ou un rapport professionnel, applique la leçon de la section 7 : retrouve la source d'origine, vérifie la date, et confirme le chiffre exact.

Une IA — et un livre — peuvent paraître très sûrs d'eux en énonçant un chiffre. La vraie compétence, c'est de garder ce petit réflexe : "intéressant... et la source, c'est laquelle ?" 🤔


## 13. Programme d'entraînement simplifié

Pour devenir bon, il ne suffit pas de lire.

Il faut pratiquer.

Voici un parcours simple en 10 exercices, plus 3 défis bonus pour celles et ceux qui veulent aller plus loin.

Ne cherche pas à tout réussir du premier coup. Ici, se tromper fait partie de l'entraînement. Même les bons prompt engineers ont déjà écrit des consignes tellement longues qu'on aurait pu les plier en quatre et les envoyer par colis.

### Comment répartir ces exercices dans le temps

Tu pourrais faire les 10 exercices d'affilée en une heure. Mais la recherche sur la mémorisation montre qu'un apprentissage espacé sur plusieurs jours s'ancre beaucoup mieux qu'une session unique, même plus longue.

Voici un rythme simple à suivre :

- **Jour 1** : exercices 1, 2 et 3.
- **Jour 3** : exercices 4, 5 et 6 — puis refais l'exercice 1 sans regarder ta première version. Compare les deux.
- **Jour 7** : exercices 7, 8, 9 et 10.
- **Jour 10** : reprends un exercice au hasard parmi les dix, de mémoire. Si tu galères, ce n'est pas grave : c'est justement le signal que cette notion a besoin d'un peu plus de pratique.

Le fait de te re-tester sans relire la correction (plutôt que de simplement relire tes notes) s'appelle la pratique de récupération. C'est inconfortable sur le moment, mais c'est ce qui fait tenir l'apprentissage dans la durée.

### Exercice 1 : transformer une demande floue

Prends cette demande :

> Analyse ce rapport de ventes.

Réécris-la avec CO-STAR.

Ajoute :

- le contexte ;
- l'objectif ;
- le style ;
- le ton ;
- l'audience ;
- le format attendu.

But : apprendre à enlever le flou.

Petit sourire de débutant : si ton premier prompt ressemble à "fais un truc bien", ce n'est pas grave. On commence tous quelque part.

### Exercice 2 : contrôler le ton

Demande à l'IA d'écrire une réponse à un client mécontent.

Ajoute :

- le ton souhaité ;
- les mots interdits ;
- la longueur maximale ;
- un exemple de bonne réponse.

But : comprendre que le style se pilote.

Tu vas voir : changer le ton d'une réponse, c'est comme changer la lumière dans une pièce. Le contenu reste là, mais l'ambiance change complètement.

### Exercice 3 : faire raisonner étape par étape

Donne à l'IA un problème avec plusieurs informations.

Demande-lui de :

1. repérer les données importantes ;
2. expliquer les étapes ;
3. donner la conclusion.

But : éviter les réponses trop rapides.

### Exercice 4 : comparer plusieurs solutions

Choisis un problème :

> Comment lancer une petite formation en ligne ?

Demande à l'IA 3 stratégies différentes, avec avantages, risques et coûts.

But : apprendre à explorer plusieurs chemins.

### Exercice 5 : vérifier les faits

Donne un texte à résumer.

Demande à l'IA de lister les affirmations importantes, puis de dire lesquelles sont certaines et lesquelles sont incertaines.

But : réduire les inventions.

### Exercice 6 : obtenir un format propre

Donne un e-mail client à l'IA.

Demande-lui d'extraire les informations en JSON :

- nom ;
- besoin ;
- urgence ;
- prochaine action.

But : apprendre à produire des données utilisables.

### Exercice 7 : créer une mini-équipe d'agents

Demande à l'IA de jouer 3 rôles :

- analyste ;
- critique ;
- rédacteur final.

Chaque rôle doit donner sa contribution.

But : comprendre la logique multi-agents.

### Exercice 8 : retrouver les passages importants

Donne un long texte.

Demande à l'IA de citer les sections utiles avant de faire la synthèse.

But : éviter qu'elle résume au hasard.

### Exercice 9 : créer un juge

Demande à l'IA de corriger une réponse selon une grille :

- correct ;
- à corriger ;
- risqué ;
- échec.

But : apprendre à évaluer une réponse.

### Exercice 10 : couper un prompt trop lourd

Prends une consigne très longue.

Divise-la en 3 prompts :

1. comprendre la demande ;
2. extraire les informations ;
3. produire la réponse finale.

But : apprendre que parfois, plusieurs petites demandes valent mieux qu'une énorme consigne.

Quand un prompt devient un meuble IKEA sans notice, coupe-le en morceaux. Tout le monde respirera mieux, toi compris.

### Bonus : 3 défis niveau expert

Ces trois défis reprennent les exercices 7, 8 et 9, mais avec un scénario plus proche de ce qu'on trouve en entreprise. 😎 Prends ton temps : c'est normal si la première tentative est imparfaite.

**Bonus A — Le comité d'investissement (suite de l'exercice 7)**

Demande à l'IA de jouer 4 rôles : un analyste "tendances générales", un analyste "chiffres de l'entreprise", un analyste "avis du public", et un responsable qui doit prendre une décision.

Les trois premiers donnent chacun leur avis sur un même produit ou projet fictif, **même si leurs avis se contredisent**. Le responsable doit ensuite lire les trois avis, expliquer où ils sont en désaccord, et donner une recommandation finale avec un niveau de confiance (faible, moyen, élevé).

But : apprendre à faire travailler des points de vue contradictoires ensemble, plutôt que de les lisser artificiellement.

**Bonus B — La grande note (suite de l'exercice 8)**

Donne à l'IA un texte assez long (plusieurs pages, ou plusieurs documents collés ensemble). Demande-lui de :

1. marquer les passages utiles en les entourant d'une balise du type `<passage_utile>...</passage_utile>` ;
2. ne faire la synthèse finale qu'à partir de ces passages marqués ;
3. signaler si une information importante semble se trouver "au milieu" du texte plutôt qu'au début ou à la fin.

But : vérifier que l'IA ne se contente pas de résumer le début et la fin d'un document — un piège fréquent sur les textes longs.

**Bonus C — Le juge anti-biais (suite de l'exercice 9)**

Demande à l'IA de jouer un "juge" chargé de relire des annonces de recrutement ou des réponses de chatbot, et de repérer si elles favorisent ou défavorisent injustement un groupe de personnes (âge, genre, origine, situation de handicap...).

Donne-lui des exemples de réponses à classer "acceptable" et d'autres à classer "à corriger", puis demande-lui d'expliquer son verdict avant de le donner.

But : comprendre qu'un "juge IA" peut aussi servir à surveiller l'équité, pas seulement la qualité rédactionnelle — et qu'il doit toujours justifier son verdict, jamais juste donner une note brute.


## 14. Les modèles de prompts à garder

Voici des modèles simples que tu peux réutiliser.

Garde-les comme une petite trousse de secours. Le jour où ton cerveau affiche "mise à jour en cours", ces modèles t'aideront à redémarrer.

### Modèle CO-STAR

```text
Contexte :
[Explique la situation.]

Objectif :
[Dis exactement ce que tu veux obtenir.]

Style :
[Guide, tableau, liste, e-mail, fiche, script, etc.]

Ton :
[Simple, chaleureux, professionnel, direct, rassurant, etc.]

Audience :
[Dis pour qui la réponse est faite.]

Réponse attendue :
[Précise le format, la longueur et les contraintes.]
```

### Modèle RACE

```text
Rôle :
[Qui l'IA doit incarner.]

Action :
[Ce qu'elle doit faire, très concrètement.]

Contexte :
[La situation dans laquelle elle agit.]

Évaluation attendue :
[À quoi ressemble un bon résultat, et comment on saura que c'est réussi.]
```

### Modèle pour simplifier un texte

```text
Simplifie le texte ci-dessous pour un lecteur grand public.
Utilise des phrases courtes.
Évite le jargon.
Explique les mots difficiles.
Ajoute des analogies simples.
Adresse-toi directement au lecteur avec un ton humain et rassurant.
Garde les idées importantes sans ajouter de faits inventés.
```

### Modèle pour vérifier une réponse

```text
Vérifie cette réponse.
Dis :
1. ce qui est correct ;
2. ce qui est flou ;
3. ce qui pourrait être faux ;
4. ce qu'il faut corriger ;
5. une version finale plus fiable.
```

### Modèle pour comparer des options

```text
Propose 3 options différentes.
Pour chaque option, donne :
- les avantages ;
- les risques ;
- le niveau de difficulté ;
- le temps nécessaire ;
- la meilleure situation pour l'utiliser.

Puis recommande l'option la plus adaptée.
```

### Modèle pour obtenir une réponse structurée

```text
Réponds uniquement dans ce format :

Titre :
Résumé en 3 lignes :
Points importants :
Actions conseillées :
Risques :
Conclusion :

N'ajoute aucune autre section.
```

### Modèle JSON strict (avec petit schéma)

```text
Extrais les informations du texte ci-dessous.
Réponds uniquement en JSON valide, sans aucun texte autour.

Schéma attendu :
- [champ_1] : texte
- [champ_2] : nombre
- [champ_3] : une seule valeur parmi "[valeur_a]", "[valeur_b]", "[valeur_c]"

N'ajoute aucun champ qui ne figure pas dans cette liste.
Si une information manque, mets la valeur null.
```


## 15. Les erreurs fréquentes à éviter

Cette section n'est pas là pour te gronder.

Elle est là pour te faire gagner du temps.

Pour chaque cas, fais l'exercice avant de lire la réponse : lis le prompt fautif, devine ce qui va mal se passer, et essaie de le corriger toi-même dans ta tête. Puis compare avec l'explication.

Si tu reconnais une de tes erreurs, souris un peu : cela veut dire que tu es exactement en train d'apprendre. 🙂

### Repère l'erreur 1

> Fais-moi un bon texte.

Qu'est-ce qui cloche avant même que l'IA réponde ?

Réponse : "bon" ne veut rien dire de précis. Cette consigne dit "surprends-moi" plutôt que "aide-moi vraiment". Une version corrigée donnerait une longueur, une audience et un ton :

> Écris un texte de 300 mots pour expliquer notre service à des débutants, avec un ton rassurant et 3 exemples concrets.

### Repère l'erreur 2

> Résume cet article pour notre site.

Qu'est-ce qui manque ici, alors que le format JSON et la longueur sont presque secondaires ?

Réponse : on ne sait pas qui va lire le résumé. Un texte pour un expert n'est pas un texte pour un débutant, et l'IA ne peut pas deviner ton audience. Dis toujours à l'IA qui va lire.

### Repère l'erreur 3

> Explique-moi les avantages et les inconvénients de cette option.

La réponse risque d'arriver en un long paragraphe continu, difficile à relire en réunion. Pourquoi ?

Réponse : la consigne ne précise aucun format. Si tu veux un tableau, demande un tableau. Si tu veux une liste, demande une liste. Si tu veux une réponse courte, donne une limite.

### Repère l'erreur 4

Un collègue copie-colle directement une statistique donnée par l'IA dans un rapport officiel, sans la relire.

Quel est le risque, même si la phrase semblait sûre d'elle ?

Réponse : l'IA peut se tromper et parler avec confiance même quand elle invente. Pour les sujets importants, demande toujours une vérification avant de réutiliser un chiffre ou un fait. 🤔

### Repère l'erreur 5

> Analyse ce contrat de 40 pages, résume les risques juridiques, rédige une réponse au client, puis génère un plan d'action en 10 étapes — tout ça dans le même message.

Ce prompt a de bonnes chances de produire une réponse bâclée sur au moins une des quatre tâches. Pourquoi ?

Réponse : il mélange quatre missions différentes dans une seule consigne. Un gros sac difficile à porter devient plus simple quand tu le divises en plusieurs petits sacs. Découpe-le en 4 prompts successifs, un par tâche.

### Repère l'erreur 6

> "L'IA fait le travail de 250 personnes" — phrase reprise telle quelle dans une présentation, sans vérification.

Cette phrase circule beaucoup, y compris dans ce manuel (section 12). Quel est le piège ?

Réponse : un chiffre qui sonne bien et qui circule beaucoup n'est pas forcément exact ni à jour. C'est la même règle que pour les hallucinations de l'IA (section 7). Avant de réutiliser un chiffre dans une présentation, un rapport ou une décision, prends deux minutes pour retrouver la source originale et vérifier qu'elle est encore valable.


## 16. La grande idée à retenir

Le prompt engineering n'est pas de la magie.

C'est une méthode de communication.

Tu apprends à dire clairement :

- où tu veux aller ;
- ce que tu veux obtenir ;
- pour qui la réponse est faite ;
- dans quel style ;
- avec quelles limites ;
- sous quel format.

Une IA peut être très puissante, mais elle a besoin d'un bon cadre.

Sans cadre, elle improvise.

Avec un bon cadre, elle devient un vrai outil de travail.

Tu peux voir l'IA comme un assistant très rapide, mais pas toujours prudent.

Ton prompt, c'est la main sur le volant. 😊

Plus tu conduis clairement, plus le trajet devient utile, calme et efficace.

Et si tu rates un virage, ce n'est pas la fin du monde. Tu corriges, tu reformules, tu reprends la route.


## 17. Boîte à outils avancée : pour aller plus loin

Cette dernière section est un pense-bête. Tu peux y revenir chaque fois que tu croises un terme technique sans te souvenir d'où il vient.

### Tableau récapitulatif des formules

| Formule | Signification | Quand l'utiliser |
|---|---|---|
| **CO-STAR** | Contexte, Objectif, Style, Ton, Audience, Réponse attendue | Pour une demande complète, quand tu as le temps de bien cadrer |
| **RTF** | Rôle, Tâche, Format | Pour une demande rapide et directe (code, traduction, message court) |
| **CREATE** | Qui parle, demande, Exemples à suivre, détails à Ajouter, Type de sortie, contraintes (Extras) | Pour du contenu marketing ou communication, avec des exemples |
| **RACE** | Rôle, Action, Contexte, Évaluation attendue | Quand le résultat concret compte plus que le format |
| **CARE / TRACE** | Variantes qui recombinent Contexte, Action, Résultat ou Tâche, Exemple | Si tu les croises ailleurs : mêmes briques, autre étiquette |

### Mini-glossaire des termes avancés

| Terme | En une phrase |
|---|---|
| **Schéma / contrat de données** | La liste précise des champs attendus dans une réponse JSON, avec leur type et leurs valeurs possibles. |
| **`additionalProperties: false`** | Une instruction qui dit à l'IA : "n'invente aucun champ qui ne soit pas dans la liste". |
| **Température** | Un réglage qui contrôle si l'IA répond toujours pareil (température basse) ou varie davantage (température haute). |
| **Repair loop (boucle de réparation)** | Renvoyer une erreur à l'IA pour qu'elle corrige elle-même le format de sa réponse. |
| **Timeout** | La durée maximale qu'on accorde à un agent avant de passer à un plan B. |
| **Retry** | Redonner une nouvelle chance à un agent qui a échoué, parfois en attendant un peu plus longtemps à chaque essai. |
| **Circuit breaker (coupe-circuit)** | Arrêter complètement d'utiliser un agent qui échoue trop souvent, le temps que la situation se stabilise. |
| **Faithfulness (fidélité)** | Est-ce que la réponse colle au contexte fourni, sans rien inventer ? |
| **Answer Relevancy (pertinence)** | Est-ce que la réponse correspond vraiment à la question posée ? |
| **Contextual Relevancy** | Pour les systèmes qui cherchent des documents : ces documents sont-ils les bons ? |
| **Tool Correctness** | Pour les agents qui utilisent des outils : les ont-ils bien utilisés ? |
| **Accord entre juges** | Une mesure de la fréquence à laquelle un juge IA et un humain tombent d'accord sur la même évaluation. |

Tu n'as pas besoin de mémoriser ce tableau. Le simple fait de savoir qu'il existe, et de pouvoir y revenir, suffit pour ne plus être surpris par ce vocabulaire dans une réunion ou un article.


## Conclusion

Si tu débutes, ne cherche pas à tout maîtriser d'un coup.

Commence simplement :

1. Donne le contexte.
2. Dis l'objectif.
3. Précise le lecteur.
4. Demande un format.
5. Fais vérifier les points importants.

Rien qu'avec cela, tes résultats vont déjà beaucoup s'améliorer.

Et surtout, rappelle-toi ceci :

> Tu n'as pas besoin de parler comme une machine pour utiliser une IA.

Tu dois seulement apprendre à être clair, précis et humain. 😊

C'est la vraie force d'un bon prompt.

Le meilleur moment pour maîtriser ces outils était peut-être hier.

Le deuxième meilleur moment, c'est maintenant.

Et cette fois, tu n'es pas seul face au petit robot. 🙂


## Quatrième de couverture

Et si la différence entre une IA décevante et une IA vraiment utile ne venait pas de la machine, mais de ta façon de lui parler ?

Ce manuel t'apprend à construire des prompts clairs, humains et efficaces. Pas avec du jargon froid. Pas avec des formules mystiques réservées à quelques experts. Mais avec des explications simples, des analogies du quotidien, des exemples réutilisables et une méthode progressive.

Tu vas apprendre à :

- donner un contexte clair à l'IA ;
- formuler un objectif précis ;
- choisir le bon ton pour ton lecteur ;
- éviter les réponses floues ;
- réduire les hallucinations ;
- structurer les sorties en formats utiles (y compris en JSON strict) ;
- piloter une petite équipe d'agents IA, avec ses filets de sécurité ;
- juger et faire juger une réponse avec de vrais critères ;
- utiliser des modèles de prompts (CO-STAR, RTF, CREATE, RACE...) que tu peux adapter tout de suite.

Ce livre est pensé pour les débutants, les formateurs, les entrepreneurs, les professionnels curieux et toutes les personnes qui veulent enfin passer de "j'ai demandé à l'IA" à "j'ai obtenu un vrai résultat".

L'auteur, Ramarosandratana H. Nantenaina, connu sous le nom de hramaros, est formateur IA et spécialiste de l'automatisation par LLM.

Passionné d'informatique et d'intelligence artificielle, il conçoit des contenus pour rendre l'évolution numérique plus accessible.

Son parcours combine :
- pédagogie A.D.D.I.E ;
- prompt engineering avancé ;
- automatisation par IA ;
- codage assisté par IA et pratique des modèles populaires comme Claude, OpenAI et Gemini.

Il a participé au Hackathon DigitAgro à Marseille en 2025 et, lors de ses études à l'école 42 Antananarivo, a mené des formations d'initiation à l'IA, à la cybersécurité et aux outils Google avec l'association BDE 42 Antananarivo.

Son objectif est simple : aider chacun à comprendre l'IA sans prérequis en informatique, sans peur ni honte, et sans se perdre dans un labyrinthe de mots compliqués.

Parce qu'une bonne consigne peut transformer une machine impressionnante en partenaire de travail.


