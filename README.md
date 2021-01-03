# OAuth winter break

## Description

Basic implementation of OAuth to Github

## Installation
To setup locally, follow these instructions:
This project requires the use of `Ruby 2.5.3`

  * __Fork & Clone Repo__
    * Fork this repo to your own GitHub account.
    * Create a new directory locally or `cd` into whichever directory you wish to clone down to.
    * Enter `git clone git@github.com:<<YOUR GITHUB USERNAME>>/viewing_party.git`
  * __Install Gems__
    * Run `bundle install` to install all gems in the Gemfile
  * __Set Up Local Database and Migrations__
    * Run `rails db:create`
    * Run `rake db:migrate`

## Fuctionality screnshots

### Login Page
  https://user-images.githubusercontent.com/63683549/103488486-ed0a0c00-4dda-11eb-80ec-9a0b42000f8d.png
### Dashboard
  https://user-images.githubusercontent.com/63683549/103488504-0dd26180-4ddb-11eb-8652-0d0fc6b25876.png
### Private Repositories
  https://user-images.githubusercontent.com/63683549/103488524-4114f080-4ddb-11eb-8d68-27e533d95f13.png
### Public Repositories
  https://user-images.githubusercontent.com/63683549/103488514-26427c00-4ddb-11eb-8bca-391d8c5e3cc8.png

## What could be improved
  * Poros - Poros is one thing that could be implemented to dry up the code in the views instead of using the hash
  * Facades - Because of the services a facade could maybe be used to dry it up a little bit
