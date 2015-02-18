# Azk node application example

With this simple node.js application we demonstrate how powerful and yet very easy to use `azk` really is when provisioning and configuring a development environment. 

# The Application

This is a very simple node.js application. It uses the express.js web framework to serve web pages in which the `azk` logo is displayed along with the value of the `AZK_NAME` environment variable.

Also, whenever the `REDIS_PORT` and `REDIS_HOST` variables are used, a simple access counter is automatically loaded.

# Scenario 1

In this first scenario, we demonstrate how to use `azk` to obtain the right development environment for the application and how to scale the application to 5 instances. 

1. [Install](http://azk.io) `azk`; 

2. Check if `azk agent` is running:

```bash
$ azk agent status
```

3. Clone the application locally:

```bash
$ git clone http://github.com/azukiapp-samples/node-example
```

4. Create the initial `Azkfile.js`:

```bash
$ cd node-example
$ azk init
azk: Azkfile.js generated
```

5. Execute the application:

```bash
$ azk start
$ azk status
```

6. Access the application through the `azk` built-in balancer:

```bash
$ open http://node-example.azk.dev
```

7. Scale the application to 5 instances:

```bash
$ azk scale node-example 5
```

8. Please note that when you repeatedly reload http://node-example.azk.dev, different ids are displayed. This demosntrates that the http balancer is hitting different instances of the application. 

# Scenario 2

We can now add a database to the application in order to demonstrate how to make them communicate with each other (and make a [system of systems](http://en.wikipedia.org/wiki/System_of_systems)):

1. Edit the `Azkfile.js` file and make the changes below:

```js
...
  'node-example': {
      depends: ["redis"], // Add the database as a dependency
      ...
  },
...
  // Add the database as a system
  redis: {
    image: "dockerfile/redis",
    persistent_folders: [ "/data" ]
  }
...
```

2. Install the required node.js library to use redis:

```bash
$ azk shell node-example -c "npm install redis --save"
```

3. Start the database:

```bash
$ azk start redis
```

4. Reload the application so that it can recognize the database:

```bash
$ azk stop node-example
$ azk start node-example
```

5. By reloading http://node-example.azk.dev it is possible to see that an access counter is displayed and that it refers to to the connection between the application and the database (which together make a [system of systems](http://en.wikipedia.org/wiki/System_of_systems)).

## License

"Azuki", "Azk" and the Azuki logo are copyright (c) 2013-2014 Azuki Serviços de Internet LTDA.

Azk source code is released under Apache 2 License.

Check LEGAL and LICENSE files for more information.
