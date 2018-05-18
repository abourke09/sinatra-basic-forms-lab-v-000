require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    Puppy.new(params[input])
    @name = Puppy[:name]
    @breed = Puppy.new[:breed]
    @age = Puppy.new
    erb :create_puppy
  end

  post '/new' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
  end

  end


end
