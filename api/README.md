## TaskCargo API

TaskCargo is a basic API built with Ruby rails. 

It serves as a backend API [link]()

```


```

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Render](https://img.shields.io/badge/Render-%46E3B7.svg?style=for-the-badge&logo=render&logoColor=white)
![Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)

- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Ruby on Rails `v3.0.5`**
- **Serializer `v5.3.0`**


## Setup
You can setup this repository locally by following this manual

1. Clone the repository
    ```{shell}
    git@github.com:kimathinjoki/TaskCargo.git
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rails s
    ```
5. Open the application from your browser
    ```
   http://localhost:3000
   ```
   
## Application
This application is a simple web API that allows users to:

- View superheroes.
- View a superheroes & related power.
- View powers of a particular superhero.
- Create a hero


Or use the deployed [link]() directly:

```


```

### MODELS
Database schema definitions.

#### Uers

| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| name      | String                                          | The name of the user.               |
| email | String                                          | The email of the User. |
| password | String                                          | The password of the user. |
| updated_at     | Date      | The date the hero was updated.        |
| created_at   | Date                                            | The date hero was created.      |



#### Todos

| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| Title     | String    | todo title.                     |
| Description | String    | todo description. |
| Priority | Integer    | todo priority. |
| Status | Integer    | todo status. |
| Priority | Integer    | todo prority. |
| updated_at    | Date      | The date the power was updated.        |
| createdAt     | Date      | The date the power was created.        |


### ROUTES

1. `/users` 

- Shows all users.

2. `/users/login`

    - logd in a user.

3. `/users/logon/check`

 - Checks a user login status.


4. `/users/logout`

- Logout a user

5. `/todos`

- Shows all user todos

6. `/todos` 
- Updates a todo

6. `/todos` 
- Updates a todo

6. `/todos` 
- Updates a todo

## LICENSE

This repository is distributed under the MIT License

```markdown
Copyright 2023 Kimathi Njoki

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```


## Author
This repository is maintained by:

- [Kimathi Njoki](https://github.com/kimathinjoki) 