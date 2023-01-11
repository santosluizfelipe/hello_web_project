require 'sinatra/base'

class Application < Sinatra::Base

  get '/hello' do 
  '  <html>
  <head></head>
  <body>
    <h1>Hello</h1>
  </body>
</html>'
  end

  # post '/submit' do 
  #   name = params[:name]
  #   message = params[:message]
  #   return "Hello #{name}"
  # end

  post '/sort-names' do 
    name = params[:name]
    return name.split(",").sort.join(",")
  end
end