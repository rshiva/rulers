require "rulers/version"
require "rulers/routing"


module Rulers
  class Application 
    def call(env)
      if env["PATH_INFO"] == '/favicon.ico'
        [404,{'Content-Type'=> 'text/html'},[]]
      elsif env["PATH_INFO"] == '/'
        [200,{'Content-Type'=>"text/html"}, [File.read(File.join(File.dirname(__FILE__), "public/index.html"))]]
      else
        klass, act = get_controller_and_action(env)
        controller = klass.new(env)
        text = controller.send(act)
        [200,{'Content-Type'=> 'text/html'},[text]]
      #   [404, {'Content-Type'=> 'text/html'},["Record Not Found "]]
      end
    end
  end

  class Controller
    def initialize(env)
      @env =  env
    end

    def env
      @env
    end
  end
end

module Rulers
  class Error < StandardError; end
  # Your code goes here...
end


require "rulers/array"