# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create({name: 'Nicolas Bouygues', email: 'bouygues.nicolas@gmail.com'})
foodies_description = 'Un projet créé lors de ma formation au Wagon.'
foodies = Project.create!({title: 'Foodies', technologies: ['Ruby', 'Ruby on Rails', 'Javascript ES6', 'HTML', 'CSS'], description: foodies_description, creation_date: '13/03/2020'})
video_agregateur_description = "Projet créé afin de monter en compétences sur React."
video_agregateur = Project.create!({title: 'Agrégateur de vidéos', technologies: ['React.JS', 'JSX', 'HTML', 'CSS'], description: video_agregateur_description, creation_date: '20/09/2020'})