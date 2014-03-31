require 'sinatra/base'

class App < Sinatra::Application
  PRODUCTS = []
  get '/' do
    erb :index, :locals => {:products => PRODUCTS}
  end
  get '/new' do
    erb :add_product
  end
  post '/' do
    PRODUCTS << params[:product]
    redirect '/'
  end
end