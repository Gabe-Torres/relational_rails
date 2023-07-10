class BendersController < ApplicationController
  def index
    @benders = Bender.all
  end

  def new 
    
  end

  def show 
    @bender = Bender.find(params[:id])
  end
end