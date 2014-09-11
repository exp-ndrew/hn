
User.create({name: "Test User", email: "hi@aol.com", password: "go"})
User.create({name: "Ash", email: "ash@aol.com", password: "go"})
User.create({name: "Gary", email: "gary@aol.com", password: "go"})
User.create({name: "Professor Oak", email: "oak@aol.com", password: "go"})
User.create({name: "Fido", email: "fido@aol.com", password: "go"})
Article.create({title: "Log In at the top right! hi@aol.com / go", content: "You can log in as a Test User with `hi@aol.com` and the password `go`", link: "/login/", user_id: "1"})
Article.create({title: "Rovr.io: rethinking email for dogs", content: "We're a startup positioned in the canine email space and we're rethinking everything. We're launching on Tuesday and I wanted to send out some pre-beta alpha-gamma invites to you.", link: "http://andrewwestling.com", user_id: "5"})
Article.create({title: "Popcorn as a Service", content: "I quit my job at tooler.io.ly to start my first startup, Popcorn as a Service. What do you think?", link: "http://andrewwestling.com", user_id: "5"})
Article.create({title: "A great search engine", content: "I found this place online that lets you type in some words and find information about those words. Seems like a novel idea but I don't think it'll take off. Thoughts?", link: "http://google.com", user_id: "3"})

Comment.create({text: "I want to make Pokémon as a Service!", 
                user_id: "2", 
                commentable_id: "3", 
                commentable_type: "Article"})
Comment.create({text: "Your startups will never take off! I'll be the best startup trainer in the world!", 
                user_id: "3", 
                commentable_id: "1", 
                commentable_type: "Comment"})
Comment.create({text: "Gary, Ash picked Charmander when he started the game so he's gonna win. Sorry.", 
                user_id: "4", 
                commentable_id: "2", 
                commentable_type: "Comment"})
Comment.create({text: "You guys are weird.", 
                user_id: "1", 
                commentable_id: "3", 
                commentable_type: "Comment"})
Comment.create({text: "I think you're gonna have a hard time competing with orvil.ly, it's pretty good. Not too many kernels. Sometimes it's burnt though.", 
                user_id: "1", 
                commentable_id: "3", 
                commentable_type: "Article"})
Comment.create({text: "Notice that articles can have comments", 
                user_id: "1", 
                commentable_id: "2", 
                commentable_type: "Article"})
Comment.create({text: "And comments can have replies", 
                user_id: "5", 
                commentable_id: "6", 
                commentable_type: "Comment"})
Comment.create({text: "But you can only Edit/Delete comments made by the account you're logged in with!", 
                user_id: "1", 
                commentable_id: "7", 
                commentable_type: "Comment"})
Comment.create({text: "They should make something like this for Pokémon!", 
                user_id: "4", 
                commentable_id: "4", 
                commentable_type: "Article"})
Comment.create({text: "Oh Gramps, always thinking about Pokémon!", 
                user_id: "3", 
                commentable_id: "9", 
                commentable_type: "Comment"})
Comment.create({text: "Notice that articles can have comments", 
                user_id: "1", 
                commentable_id: "1", 
                commentable_type: "Article"})
Comment.create({text: "And comments can have replies", 
                user_id: "5", 
                commentable_id: "11", 
                commentable_type: "Comment"})
Comment.create({text: "But you can only Edit/Delete comments made by the account you're logged in with!", 
                user_id: "1", 
                commentable_id: "12", 
                commentable_type: "Comment"})
Comment.create({text: "I'd use this service!", 
                user_id: "5", 
                commentable_id: "2", 
                commentable_type: "Article"})
