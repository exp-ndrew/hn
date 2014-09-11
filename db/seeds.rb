# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({name: "Test User", email: "hi@aol.com", password: "go"})
Article.create({title: "Popcorn as a Service", content: "I quit my job at tooler.io.ly to start my first startup, Popcorn as a Service. What do you think?", link: "http://andrewwestling.com", user_id: "1"})
Article.create({title: "Rovr.io: rethinking email for dogs", content: "We're a startup positioned in the canine email space and we're rethinking everything. We're launching on Tuesday and I wanted to send out some pre-beta alpha-gamma invites to you.", link: "http://andrewwestling.com", user_id: "1"})
Article.create({title: "A great search engine", content: "I found this place online that lets you type in some words and find information about those words. Seems like a novel idea but I don't think it'll take off. Thoughts?", link: "http://google.com", user_id: "1"})