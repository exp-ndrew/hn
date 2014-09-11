# hn

A clone of [Hacker News](http://news.ycombinator.com)

View a live version of this project [here](http://xpndrw-hn.herokuapp.com/).

## what

* user can post new "articles" with a brief description
* articles can also optionally be links to other websites
* every article has a comments thread: articles have comments, and comments have replies.
* replies can have (theoretically) infinite replies on them.
* users can sign up and log in
* articles, comments, and replies can't be added unless a user is logged in
* when a user logs in and views an article, only the comments made by that user can be edited or deleted
* the list goes on, but it's beginning to emulate many of the features of the real Hacker News

## setup

A live version of this project is available [here](http://xpndrw-hn.herokuapp.com/).

1. Clone the repository using `$ git clone`
1. Run `$ bundle install` to install gems
1. Run `$ rake db:create` and `$ rake db:migrate` from the directory you cloned into
1. Run `$ rails s` to start the Rails server
1. Go to [http://localhost:3000](http://localhost:3000) in a web browser to use the app

## meta

3..4 September 2014

[Dylan Peerenboom](http://github.com/peerend) and [Andrew M Westling](http://github.com/expandrew) via [Epicodus](http://www.learnhowtoprogram.com/lessons/wikipages-to-do-in-rails)

## license
MIT