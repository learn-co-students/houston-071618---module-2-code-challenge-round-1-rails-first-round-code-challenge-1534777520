class HeroinesController < ApplicationController
  before_action :current_heroine, only: [:show, :destroy]
  def index
    @heroines = Heroine.all
  end

  def show
    # @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      byebug
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def destroy
    # @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def current_heroine
    @heroine = Heroine.find(params[:id])
  end
end
