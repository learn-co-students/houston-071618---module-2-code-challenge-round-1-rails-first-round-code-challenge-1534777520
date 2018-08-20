class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    redirect_to heroines_path
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    @heroine.update(heroine_params)
    redirect_to heroines_path
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
