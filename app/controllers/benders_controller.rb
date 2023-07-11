class BendersController < ApplicationController

  def index
    @benders = Bender.all
  end

  def new 
  end

  def show 
    @bender = Bender.find(params[:id])
  end

  def create
    @nation = Nation.find(params[:nation_id])
    @bender = @nation.benders.create!(bender_params)
    redirect_to "/nations/#{@nation.id}/benders"
  end

    private
  def bender_params
    params.permit(:name, :age, :bending_style)
  end
end