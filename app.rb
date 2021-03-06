require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/NEW' do
    erb :create_puppy
  end

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @new = Puppy.new(@name, @breed, @age)
    erb :display_puppy
  end

end
