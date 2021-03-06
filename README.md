# CMPT-276 Assignment 2 - Adam Bignell - SN:301271832

Note that for aesthetic purposes, a few of the default buttons of been renamed:
Show (Tokimon) -> Stats
Show (Trainer) -> Trainer Cards
Destroy (Tokimon) -> Release

Features:
  - Customized Headers for Tokidex, New Tokimon/Trainer, Trainers
  - Added 'bodytype' attribute to tokimon with dropdown menu choices
  - Added images associated with every bodytype
  - Added 'affiliation' attribute to trainers with dropdown menu choices
  - Added logos associated with each affiliation
  - 'Trainer' column of tokidex displays trainer name rather than trainer_id
  - Level cannot be set by the user; must be legitimately achieved by having Tokimon
  - Trainer names (from tokidex) are clickable links that lead to Trainer Cards
  - Upon Trainer deletion, all associated Tokimon are released
  - Trainer is a required field for tokimon creation
  - New records have default values
  - Editting either has default values or previously assigned value

# ruby-getting-started

A barebones Rails app, which can easily be deployed to Heroku.

This application support the [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby) article - check it out.

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ bundle exec rake db:create db:migrate
$ heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

or

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Docker

The app can be run and tested using the [Heroku Docker CLI plugin](https://devcenter.heroku.com/articles/introduction-local-development-with-docker).

Make sure the plugin is installed:

    heroku plugins:install heroku-docker

Configure Docker and Docker Compose:

    heroku docker:init

And run the app locally:

    docker-compose up web

The app will now be available on the Docker daemon IP on port 8080.

To work with the local database and do migrations, you can open a shell:

    docker-compose run shell
    bundle exec rake db:migrate

You can also use Docker to release to Heroku:

    heroku create
    heroku docker:release
    heroku open

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
