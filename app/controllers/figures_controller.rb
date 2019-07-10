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
    @landmark.year_completed = params["landmark"]["year_completed"]
    @landmark.figure_id = params["figure_id"]
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end


end
