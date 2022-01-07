# README

# Title
Saving Money Calculator

# Description
This application is calculator for saving money.
When you bear buying something, you can save money. This application can calculate it by everyday, everyweek, everymonth.
（* Ruby3.1とRoR7.0の勉強のためという側面もあり）

# How to Install and Run the Project
WIP

1. `docker-compose run web rails new . --force --no-deps --database=postgresql`
2. `docker-compose build`
3. `docker-compose exec db bash`
  - 3-1. `passwd postgres`
  - 3-2. `enter password 'your password'` ( in this project, 'password'. ref: config/database.yml )
  - 3-3. `create role 'your_role' WITH CREATEDB login password 'your password';` ( in this project, 'app_user_role'. ref: config/database.yml )
4. `docker-compose run web rails db:create`
5. `docker-compose run web rails db:migrate`
6. `docker-compose up -d`

# License
MIT License


