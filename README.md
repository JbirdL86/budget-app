# Transactor app

A **Transactor Budget app** is a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

Everything will be based on the ERD class diagram presented below. 

![screenshot](./appScreenshot.png)

## Live demo link

[Live server](https://pacific-thicket-87114.herokuapp.com/)


## Getting Started
To run the project locally, copy up and running follow these simple example steps :

 - First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
 - clone the project with the following command line : 
```
$ git clone git@github.com:JbirdL86/budget-app.git
```
 - Then go to the right folder 
```
$ cd budget-app
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

 ## Run tests :

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```

## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
 - Heroku
 - Rspec
 - Devise
 - Cancancan
 - Bulma
 - Bootstrap
 - HTML/CSS

 
</br>

## Authors

👤 **Juan Gonzalez**

- GitHub: [@JbirdL86](https://github.com/JbirdL86)
- Twitter: [@twitterhandle](https://twitter.com/JuanLui06498455)
- Linkedin: [linkedin](https://www.linkedin.com/in/juan-luis-0551921aa/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/JbirdL86/budget-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- Original design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance.
- Inspiration 💘
- Microverse program ⚡
- My standup team 😍
- My family's support 🙌
- MicroBros 😜

## 📝 License

This project is [MIT](./MIT.md) licensed.
