# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create({name: 'Nicolas Bouygues', email: 'bouygues.nicolas@gmail.com'})

foodies_description = 'Un projet créé lors de ma formation au Wagon.'
foodies_url = 'http://www.foodies-health.live'
foodies_homepage = 'https://res.cloudinary.com/duw19l0ns/image/upload/v1602750120/Portfolio/Foodies_homepage.png'
foodies_role = "Foodies est un projet que j'ai développé lors de ma formation au Wagon à Lyon. Foodies est une plateforme permettant à des patients malades de pouvoir se renseigner sur
leurs pathologies, et de trouver des menus et aliments adaptés à leurs troubles. Une fois le(s) menu(s) sélectionné(s), il est possible de se le(s) faire
livrer directement via le site. J'ai donc eu comme missions de développer le back-end et le front-end de Foodies."
foodies_debut = "Le site a été développé en 2 semaines complètes, en collaboration avec 3 autres développeurs. Il s'agissait d'être rapide, précis et efficace.
Dans un premier temps, nous avons mis en place la base de données. Le site étant un site e-commerce, il nous fallait donc mettre en place des relations 'one to many'
et 'many to many'. Une fois cette partie réalisée, nous avons créé le design sur Figma, afin d'avoir une base solide sur laquelle se lancer. Nous avons bien réfléchi
à l'UX/UI, à savoir ce à quoi l'utilisateur a accès, comment il y a accès, et la place des différents éléments."
foodies_back = "J'ai d'abord eu en charge le développement back-end du site. Nous avons utilisé le framework Ruby on Rails'. J'ai dans un premier temps créé les différentes
'routes' du site, c'est à dire les pages visitables par l'utilisateur; la plupart étant nestées car une recette n'est pas associée à toutes les pathologies.
Dans un second temps, j'ai mis en place un système d'utilisateur avec la gem 'Devise'. Suite à cela, j'ai dû mettre en place le système de panier. Chaque utilisateur
peut ainsi ajouter à son panier différentes recettes, puis payer ce panier et programmer sa livraison. Il ne peut faire cela que s'il est connecté. J'ai donc utilisé
les cookies du site pour le panier, en gardant le panier tel quel tant que la session n'a pas été changée ou la commande passée. Après ceci, j'ai mis en place
la solution de paiement. Nous avons choisi d'utiliser Stripe via une API, un des leaders du paiement sécurisé sur Internet. Stripe est une API REST,
que nous avons integré à notre projet via une gem. Une fois que l'API était fonctionnelle et error-less, il a fallu l'intégrer au projet pour que seul le paiement
effectué puisse déclencher la finalisation de la commande. Enfin, j'ai finalisé le back-end du site en liant l'intégralité de ce que l'utilisateur a fait une fois connecté;
afin qu'il ait une 'homepage' personnalisé. Tout le back-end du site a été développé sur Ruby on Rails, avec quelques parties en JavaScript. Une semaine a été nécessaire
pour faire fonctionner correctement toutes les fonctionnalités du site."
foodies_front = "Une fois le back-end finalisé, les tests réalisés et la base de données correctement mise en place, j'ai rejoint mes collaborateurs sur le front-end
du site. Ils avaient finalisé la page d'accueil, ainsi que les pages de login et l'architecture de la plupart des autres pages. On m'a confié la réalisation des pages
'index recettes', 'show recette' et 'panier'. Une fois l'architecture réalisée selon le masque global des pages, j'ai intégré l'animation des pages, sur JavaScript ES6.
Dans un premier temps, la recherche et le filtre des différentes recettes en fonction des maladies sur la page 'index recettes'. Ensuite, j'ai designé le panier, et
les différents messages lors de l'ajout ou de la suppression d'éléments dans celui-ci. Pour ce faire, j'ai utilisé la gem 'Toastr', qui gère les messages envers l'utilisateur.
Puis j'ai finalisé les pages de chaque recette, avec un show général."
foodies = Project.create!({projet_role: foodies_role, projet_debut: foodies_debut, projet_back: foodies_back, projet_front: foodies_front, adresseweb: foodies_url, title: 'Foodies', technologies: ['Ruby', 'Ruby on Rails', 'Javascript ES6', 'Heroku', 'HTML.erb', 'CSS', 'API Stripe'], description: foodies_description, creation_date: '13/03/2020', homepage: foodies_homepage})


vidag_url = 'http://vidag.herokuapp.com'
vidag_homepage = 'https://res.cloudinary.com/duw19l0ns/image/upload/v1603442850/Portfolio/vidag_homepage_vpgaol.png'
vidag_description = "Projet créé afin de monter en compétences sur React."
vidag_role = "Vidag est une plateforme que j'ai développé entièrement sur React.JS, afin de monter en compétences sur ce langage. Après avoir suivi une formation
d'une quarantaine d'heures sur Udemy, j'ai voulu créer mon propre site afin de challenger mes connaissances sur React."
vidag_debut = "Le site a été développé en 2 semaines, à l'issue de ma formation. J'ai eu l'idée de créer une agrégateur de vidéos afin de pouvoir regarder des vidéos
de différentes plateformes sur un seul site. J'ai réfléchi à un design simple, une expérience utilisateur optimale lui permettant uniquement de chercher une vidéo
puis de sélectionner le moteur de recherche qu'il souhaite. Une fois la recherche effectuée, il clique sur la vidéo qu'il souhaite puis il peut la visionner au
centre de l'écran."
vidag_back = "React.JS étant un langage Front-end, il n'y a pas eu de back-end à proprement parler. Cela dit, il a fallu mettre en place des API afin de récupérer
les vidéos de YouTube et Dailymotion. Une fois la recherche effectuée, il faut donc lancer l'API YouTube ou Dailymotion et récupérer la réponse pour l'afficher après.
C'est une requête asynchrone, et j'ai utilisé Axios pour la gérer."
vidag_front = "React fonctionne en component qui se charge au fur et à mesure qu'ils sont nécessaires. Le premier component est la recherche, où il faut récupérer
l'input de l'utilisateur, puis appeler la fonction recherche afin que l'input soit inséré dans la requête de l'API de YouTube ou Dailymotion. Une fois la recherche
effectuée, le deuxième component, la liste des résultats à droite se charge. Le dernier component, la vidéo sélectionnée, se charge lorsque l'utilisateur clique
sur la vidéo qu'il souhaite visionner. J'ai ainsi dû gérer les échanges d'informations entre les différents composants de mon application."
vidag = Project.create!({projet_role: vidag_role, projet_debut: vidag_debut, projet_back: vidag_back, projet_front: vidag_front, adresseweb: vidag_url, title: 'Vidag', technologies: ['React.JS', 'JSX', 'Yotube API', 'Axios', 'Heroku', 'HTML', 'CSS'],homepage: vidag_homepage, description: vidag_description, creation_date: '20/09/2020'})


brouette_description = 'Mon premier projet développé au cours de ma formation au Wagon à Lyon.'
brouette_url = 'http://leperebrouette.herokuapp.com'
brouette_homepage = 'https://res.cloudinary.com/duw19l0ns/image/upload/v1602750647/Portfolio/Le_Père_Brouette_Homepage_ygcrzb.jpg'
brouette_role = "Le Père Brouette est une copie de Airbnb que nous avons dû développer en 5 jours lors de ma formation au Wagon. C'est une marketplace de brouettes,
que les gens peuvent louer sur le site."
brouette_debut = "C'est un site très simple, une marketplace de brouettes, mais c'est le premier site que j'ai développé. Il a été développé sur Ruby on Rails."
brouette_back = "Le back-end du Père Brouette est assez basique. Une fois la base de données faite sur Postgres, il a fallu faire les différentes routes. C'est un CRUD
(Create Read Update Destroy) sans particularité, un user peut créer sa brouette afin que celle-ci soit louable. Il peut ensuite gérer ses brouettes créées, ainsi que
celles louées. La recherche est conditionnée par les catégories auxquelles les brouettes appartiennent. Il faut aussi que celles-ci soient disponibles à la date demandée."
brouette_front = "La majorité du design a été fait sur SCSS. Il y a quelques parties sur JavaScript, notamment la carte indiquant la ville où se situe la brouette louée."
brouette = Project.create!({projet_role: brouette_role, projet_debut: brouette_debut, projet_back: brouette_back, projet_front: brouette_front, adresseweb: brouette_url, title: 'Le Père Brouette', technologies: ['Ruby', 'Ruby on Rails', 'Javascript ES6', 'HTML', 'CSS'], description: brouette_description, creation_date: '13/03/2020', homepage: brouette_homepage})
