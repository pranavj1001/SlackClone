# SlackClone

Hey there,

With this repo, we intend to implement some of the core features of the Slack using our own approach. 
We have primarily used JS as the programming language. You are free to use/improve/contribute to the code. 

## Features

* **ChatBot**: We have implemented five different types of bots. Each performs something different but all cater the same application and can be accessed by any logged-in user. For more info click on the links.

  - [Verison Control Bot](#verison-control-system)
  
  - [Stock Bot](#stockbot)
 
  - [Movie Bot](#moviebot)
  
  - [Doctor Bot](#doctorbot)
  
  - [Assistant](#assistant)

* **Login/Signup system**: To use the services, the user has to login/signup.

* **Create Team**: Logged-in users can create new teams from their dashboard.

* **Delete Team**: Only Teamadmins can delete a team from their dashboard.

* **Join existing group**: With correct team name and password, users can join a team.

* **Hashed Passwords**: For better security, passwords are hashed with a salt variable.

* **Responsive Web Design**: With the help of Bootstrap, this web-app can be easily accessed on any device.

* **Dashboard**: The dashboard hosts a list of exclusive services only available to logged-in users. Users can also view their activities in recent time period. The activities are shown using neatly drawn line graphs and pie charts.

## Verison Control Bot

In this system Bot can create an new project for the team (group of user) by writing following message

```OK Bot define a project```

Commit an issue of a defined project

```OK Bot commit an issue```

Display the issue/s of a project

```OK Bot display the latest commit of <project_name>```

## StockBot
This Bot display information of a company, information can be like stockPrice of company, history of company etc.

Message used to call StockBot is

```OK Bot show me stock related info about <company_name>```

## MovieBot
This Bot show popular movies, popular TV shows along with there description. It also shows movies based on year and upcoming movies.

Message used to call MovieBot is

```OK Bot display current popular movies```

## DoctorBot
This Bot tell medication based on symptons.And also decide whether disease is severe or not.

Message used to call DoctorBot is

```OK Bot I am having <symptons>```

## Assistant
This Bot greets the user when called. It has sense of humor to make mood light and tell current date and time. Do task of simple calculator.

Message used to call Assistant is

```Ok Bot```

## ScreenShot

![Alt text](dashboard.png?raw=true "DashBoard Page")

## Import the database

1. Install Xampp
2. Go to this link: http://localhost/phpmyadmin/
3. Select the import tab button
4. Select the Browse button
5. Search and Open the "slackclone.sql" file

Congratulations! you just imported the database.

## Technologies used

* JS
* PHP
* HTML
* CSS
* Chartist.js
* Bootstrap

## Contributors

* Pranav Jain
* Kedar Kale
* Ganesh Choudhary

## Queries?

email me at pranavj1001@gmail.com

## License

MIT License
