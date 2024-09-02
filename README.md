# README

1. Define CRUD.
  - C = Create
  - R = Read
  - U = Update
  - D = Delete

    These are a common pattern that many APIs follow
2. Define MVC.
  
  MVC = Model, View, Controller

  It's a design Pattern uised in software development ( I have seen this in angular framework)

  - Model = Manage an application data & business logic
  - View = Displays the data to the user and handles user interface
  - Controller = Handles user input, process it, and updates Model or View

3. What two files would you need to create/modify for a Rails application to respond to a GET request to /api/v1/tasks, assuming you have a Task model.

    1. `config/routes.rb` needs the routes,verbs and method to execute on a user request.
    2. `app/controllers/api/v1/tasks_controller.rb` needs to habve all the methods to execute(the ones specified in config/routes.rb)

4. What are params? Where do they come from?
    - It is data that can be included in a HTTP request, in which the server can process and respond to accordingly

      The can come in 4 different forms:
        - Query Params: Included in url after ?
        - Path Parameters: Included in the URL path as well to identify a specific resource
        - Body Parameters: Sent in the body of the request in JSON format
        - Headers Parameters: Set in HTTP headers for authentication
5. What is the purpose of a serializer?
   - Means to format the data that isn't useful for the front end. Data such as created_at, or updated_at may or may not be useful.
      - If not useful, then you can create a serializer class inside `app/serializers` directory, that format the data to be returned