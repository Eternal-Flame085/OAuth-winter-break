# OAuth winter break

## Description

Basic implementation of OAuth to Github

## Installation
To setup locally, follow these instructions:
This project requires the use of `Ruby 2.5.3`

  * __Fork & Clone Repo__
    * Fork this repo to your own GitHub account.
    * Create a new directory locally or `cd` into whichever directory you wish to clone down to.
    * Enter `git clone git@github.com:<<YOUR GITHUB USERNAME>>/OAuth-winter-break.git`
  * __Install Gems__
    * Run `bundle install` to install all gems in the Gemfile
  * __Set Up Local Database and Migrations__
    * Run `rails db:create`
    * Run `rake db:migrate`

## Fuctionality screnshots

### Login Page
  <img width="501" alt="Screen Shot 2021-01-03 at 3 45 51 PM" src="https://user-images.githubusercontent.com/63683549/103488629-25f6b080-4ddc-11eb-81cb-fed3fa71eea1.png">

### Dashboard
  <img width="507" alt="Screen Shot 2021-01-03 at 3 47 36 PM" src="https://user-images.githubusercontent.com/63683549/103488620-12e3e080-4ddc-11eb-8743-76a60b7e390b.png">

### Private Repositories
  <img width="581" alt="Screen Shot 2021-01-03 at 3 48 31 PM" src="https://user-images.githubusercontent.com/63683549/103488608-03649780-4ddc-11eb-8494-4976d38afc98.png">

### Public Repositories
  <img width="596" alt="Screen Shot 2021-01-03 at 3 49 18 PM" src="https://user-images.githubusercontent.com/63683549/103488524-4114f080-4ddb-11eb-8d68-27e533d95f13.png">

## What could be improved
  * Poros - Poros is one thing that could be implemented to dry up the code in the views instead of using the hash
  * Facades - Because of the services a facade could maybe be used to dry it up a little bit
