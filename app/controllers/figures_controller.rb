class FiguresController < ApplicationController
  
  get "/figures" do 
    @firgures = Figure.all
    erb :"figures/index"
  end
  
  get "/figures/new" do 
    @titles = Title.all 
    @landmarks = Landmark.all 
    erb :"figures/new"
  end
  
  get "/figures/:id" do 
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end
  
  get "/figures/:id/edit" do 
    
  end
    
end
