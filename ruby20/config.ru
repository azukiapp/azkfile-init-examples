run lambda { |env|
  require 'json'
  env_formated = JSON.pretty_generate(env)

  responseBody = [ "<!DOCTYPE html>",
                   "<html>",
                   "  <head>",
                   "    <title>Azk Example</title>",
                   "  </head>",
                   "  <body>",
                   "    <h1>",
                   "     AZK",
                   "    </h1>",
                   "    <h2>",
                         env['SERVER_SOFTWARE'],
                   "    </h2>",
                   "    <hr>",
                   "    <h4>",
                         "envs:",
                   "    </h4>",
                   "    <pre>",
                          env_formated,
                   "    </pre>",
                   "  </body>",
                   "</html>"
                 ]

  [200, {}, responseBody]}
