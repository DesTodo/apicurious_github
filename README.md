### APIcurious GitHub ### 

This app consumes data from Github's public API and re-construct a simplified version of the website’s existing UI. It utilizes OAuth protocol with Omniauth authentication library to authenticate users with the third-party provider.

**Setup Requirements:** 

Ruby version 2.4.1

Rails version 5.1.3

1. Local setup:
```
  bundle
  rails g rspec:install
  bundle exec figaro install
  rake db:create
  rake db:migrate
```

2. User can:

Authenticate with their github account

View basic information about theirmy account (profile pic, number of starred repos, followers, following)

View a summary feed of recent activity (recent commits)

View a summary feed of recent activity from users whom they follow

View a list of organizations they are a member of

View a list of their repositories
