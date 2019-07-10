class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    erb :"/figures/index"
  end

  get '/figures/new' do
    erb :"/figures/new"
  end

  post '/figures' do
    @figure = Landmark.create(name: params["figure"]["name"])

    @figure.save
    redirect to "/figures"
  end


end
