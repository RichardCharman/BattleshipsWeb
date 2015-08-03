require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
  configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000
end
  set :views, proc { File.join(root, '..', 'views') }
        
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
