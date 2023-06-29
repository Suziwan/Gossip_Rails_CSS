# The Gossip Project

A dynamic website (Star Wars style), where people can register and write gossips about other members, comment on gossips, edit their own gossips/account.  

The initial users, gossips, comments are created automatically using the [Faker gem](https://github.com/faker-ruby/faker) and stored in the database.

## Languages and tools

This project was done using Ruby on Rails (MVC architecture = Model View Controller), database with PostgreSQL, and web with HTML, CSS and Bootstrap.

## Start the app

You can start the app by doing :
```
bundle install
rails assets:precompile
rails db:create db:migrate db:seed
rails s
```

## Website Overview

<kbd>
  <img src=/GossipStarWars_Home_1.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/GossipStarWars_Home_2.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/GossipStarWars_Login.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/GossipStarWars_Profile.png width="100%">
</kbd>
&nbsp
