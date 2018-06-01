# README

### Challenge Statement ###

Cross-blogs is a backend blogging application written in a startup company called WritingForAll. It allows users to create / update / delete their articles, accepting comments for each article.

#### Notes: ####

 * Article have a 120 character limit for their title, and a 32k limit for their body.

 * The frontend application is excluded from the current scope. It is a separate, fully-functional application handled by another team, so we do not want to modify it.

#### Your Tasks: ####

 * Increase unit test coverage to reach 70%, achieving more than 70% will only consume your valuable time without extra score.

 * Find bugs and fix them, hint: we provided Cross-Blogs application in a good structure, so no need to spend your valuable time on structure modifications, just focus on fixing bugs.

 * Articles search endpoint is very slow, please optimize it.


### Prerequisites ###

* MySQL >= 5.5
* Ruby >= 2.3.0
* Bundler


### Setup Instructions ###

Add your local database password to config/database.yml (do not change production settings)

In Terminal / Command Line, move to this directory (The directory containing README.md) and run the following commands:
* bundle install
* rake db:create
* rake db:migrate
* rails s

You can then access the api using your prefered toolset (Postman, Curl, etc).


### Evaluation ###

During evaluation, we will run your project using the production environment. Please do not change the production settings in config/database.yml, as this will affect the results of the evaluation.

Please add your project to a zip file with the name cross-blogs-ruby-<YOUR-FULL-NAME>.zip (use dash "-" instead of any space).