class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    erb :"/figures/index"
  end


  get '/figures/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"/landmarks/show"
  end

end
