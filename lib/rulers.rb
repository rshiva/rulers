require "rulers/version"

class Application 
  def call(env)
    `echo debug > debug.text`
      [200, {'Content-Type' =>'text/html'},
        ["Hello from Ruby on Rulers from the gem"]
      ]
  end
end

module Rulers
  class Error < StandardError; end
  # Your code goes here...
end
