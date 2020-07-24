[![Build Status](https://travis-ci.org/cmb84scd/acebook-HoneyBunnies.svg?branch=master)](https://travis-ci.org/cmb84scd/acebook-HoneyBunnies)

# AceBook HoneyBunnies

[Project Description](#project-description) | [Tech Stack](#tech-stack) | [Installation](#installation) | [Running tests](#running-tests) | [Development Process](#development-process) | [User Stories](#user-stories) | [Database](#entity-relationship-diagram) | [Models](#workflow-diagram) | [Further development](#further-development)

<img src="https://media1.giphy.com/media/goIcmbcUMEnyE/giphy.gif?cid=ecf05e47be443a5eb3c26bc7bafae7a799a461b4e818cc10&rid=giphy.gif" width=60%>

### Project description

Create a clone app of Facebook in Ruby on Rails. This is a group project focused on pair programming and delivering MVP, utilizing XP principles.

### The Team:

Project created by the team: ([Ed Ancerys](https://github.com/EdAncerys), [Catriona Bennett](https://github.com/cmb84scd), [Gareth Woodman](https://github.com/GarethWoodman), [Marius Brad](https://github.com/mbrad26), [Paula Darias](https://github.com/pauladarias), [Asifur Rahman](https://github.com/aasirah93)) at Makers Academy.

## What we done

As Acebook is a clone of Facebook we have added similar functionality and features for user as per original web page.

User now able to do the following on a web app: **signup, signin, delete profile, able to add profile picture up on sign up or add it later on, make a post, share pictures and post them one at a time or multiple ones, like post, add friends, able to update user profile, change password, username etc.**

## Tech Stack:

- [Capybara](https://github.com/teamcapybara/capybara) Capybara helps you test web applications by simulating how a real user would interact with your app.
- [RSpec](https://rspec.info/) Behaviour Driven.
  Development for Ruby. **TDD**.
- [Rails](https://rubyonrails.org/) Framework that allows to build modern web apps.
- [Active Record](https://guides.rubyonrails.org/active_record_querying.html) SQL back end data storage.
- [Active Storage](https://edgeguides.rubyonrails.org/active_storage_overview.html) Active Storage facilitates uploading files to a cloud storage service like Amazon S3, Google Cloud Storage, or Microsoft Azure Storage and attaching those files to Active Record objects.
- [Rubocop](https://github.com/rubocop-hq/rubocop) RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter.
- [Bootstrap](https://getbootstrap.com/) & CSS for styling.

### App deployment

- We used Travis CI
- We deployed the app using Heroku, only deploys when Travis is passing
- Visit [Honey Bunnies Acebook](https://acebook-honeybunnies.herokuapp.com/)

### Project work flow plan and wall

- [You can find the engineering project outline.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

- [Honey Bunnies card wall](https://github.com/EdAncerys/acebook-HoneyBunnies/projects/1)
- [Honey Bunnies wiki](https://github.com/EdAncerys/acebook-HoneyBunnies/wiki)

## Installation

- Clone this repository
  `$ git clone https://github.com/EdAncerys/acebook-HoneyBunnies`
- Navigate to local repository
  `$ cd acebook-HoneyBunnies`
- Install bundler if you don't already have it
  `$ gem bundle install`
- Install all dependencies
  `$ bundle install`
- Add/install database structure locally.  
  `$ bin/rails db:create`  
  `$ bin/rails db:create`

## Running tests

- Navigate to local repository
  `$ cd acebook-HoneyBunnies`
- No need to start the server. In the terminal type the following command:
  `$ rspec`

## How to see it in operation

- Start the server
  `$ rails s`

- Navigate to [http://localhost:3000](http://localhost:3000) in your browser

## Development Process

Our team used an agile development process with regular sprints to deliver this application.

We followed the Extreme Programming values - all features were pair programmed, team members shared all the changes in the code design, the team used test-driven development, and delivered an MVP in the first sprint.

During development we used an agile process of git branches, merges, regular code reviews, and continuous integration.

We had daily stand-ups and retrospectives to update each other on the tasks completed, and reflect on our team's progress.

## Contributing to the project

Create a branch and when completed submit a pull request

## User Stories

### Completed:

```
As a User
So I can create my profile
I want to be able to sign up
```

```
As a User
So I can view my profile
I want to be able to login
```

```
As a User
So that I can keep my profile secure
I want to be able to logout
```

```
As a User - (functionality available)
So that I can express my thoughts
I want to be able to create posts
```

```
As a User
So that I can hide my embarrasment
I want to be able to delete my posts
```

```
As a User
So that I can win arguments online
I want to be able to update my posts
```

```
As a User
So that I can agree with a post
I want to be able to 'Like' it
```

```
As a User
So I can make changes to my profile
I'd like to be able to update it
```

```
As a User
So that I can start a fresh
I want to be able to delete my profile
```

```
As a User
So that I can show my face
I want to be able to display my profile picture
```

```
As a User
So that I can look socialiable
I want to add people as friends
```

### To be done:

```
As a User - (functionality available)
So that I can express my experiences
I want to be able to post photo's & links to videos (youtube etc.)
```

```
As a User
So that I can talk to a friend
I want to be able to comment on their posts
```

## Entity Relationship Diagram

### Relationships

```
User has many Posts
User has many Likes
```

```
Post has one User
Post has many Likes
```

```
Like has one User
Like has one Post
```

<p align="center">
    <img width="600" src="app/assets/images/acebook-HoneyBunnies-01.png">
</p>

## Workflow Diagram

<p align="center">
    <img width="600" src="app/assets/images/acebook-HoneyBunnies-02.png">
</p>

## Further Development

Ideas to improve our application

- Add feature to share posts across various platforms.
- Improve on UI elements and expand on possibility to implement UI with React.
- User profile page and friend page UI could benefit on added extra features.
