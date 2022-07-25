- In `config` folder, open `database.yml` file and Add on line 23, 24, UserName of Database and Password (In my case, in pgAdmin).
```
  username: postgres
  password: 12345
```

##### Initialize a DB:
```
rails db:create
```


# Recipe App

> The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With
- Ruby on Rails
- HTML
- CSS
- sqlite3 for the local development
- Postgresql for the production
- Heroku for Deployment

## Linters
- Rubocop
- Stylelint

## Getting Started

To get a local copy up and running follow these simple example steps.

### Install
In order to run, you need to install RUBY and Rails in your computer. For windows you can go to [Ruby installer](https://rubyinstaller.org/) and for MAC and LINUX you can go to [Ruby official site](https://www.ruby-lang.org/en/downloads/) for intructions on how to intall it.

Then you can clone the project by typing ```git clone https://github.com/RaoAkif/RecipeApp```

### Run app
- Type ```bundle install``` in the root file of the project. 
- Type ```rails s``` in the root file of the project.

## Authors

👤 **Kemigabo Catherine**

- GitHub: [@kemigabocatherine](https://github.com/kemigabocatherine)
- Twitter: [@kemigabocatherine](https://twitter.com/kemigabocatherine)
- LinkedIn: [KemigaboCatherine](https://www.linkedin.com/in/kemigabocatherine/)

👤 **RaoAkif**

- GitHub: [@raoakif](https://github.com/RaoAkif)
- Twitter: [@raoakif](https://twitter.com/RaoAkif)
- LinkedIn: [RaoAkif](https://linkedin.com/in/RaoAkif)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
