# Email Viewer by THP

## Notre Prooooooooooooooooooooooooooooojeeeeeeeeeeeeeeeeeet 
![alt text](https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fimage.noelshack.com%2Ffichiers%2F2017%2F12%2F1490048480-macron.png&f=1)

Notre projet était de créer un site permettant de lire des emails. Ce site doit afficher deux colonnes, une affichant les objets des emails reçus et une autre affichant le contenu de l'email sélectionné.<br /><br />
Voici le lien vers la version en production de ce projet : <a href='https://email-viewer-thprennes.herokuapp.com/'>https://email-viewer-thprennes.herokuapp.com/</a>

## Comment nous avons procedé

Nous avons commencé par créer le model Email qui contiens les informations suivantes : l'objet de l'email, en string, et le contenu de l'email, en string aussi. <br />
Nous avons ensuite créé le controller Home qui contiens la view index, qui sera celle dans laquelle nous allons afficher les emails. Cette view a été reliée à la racine du site dans les routes.<br />
Nous avons ensuite utilisé la gem faker (<a href='https://github.com/stympy/faker'>https://github.com/stympy/faker</a>) pour remplir le fichier seed et ainsi avoir une base de donnée contenant des emails.

## Qui sommes-nous ?

Nous sommes Léona Chevrel, Romain Saillour et Sandrine Le Breton, moussaillon-ne-s Reannais.e.s de la session 5 de The Hacking Project.
