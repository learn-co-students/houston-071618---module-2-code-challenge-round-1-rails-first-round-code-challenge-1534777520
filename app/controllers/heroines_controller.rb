class HeroinesController < ApplicationController
  before_action :selected_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
    @power_options = Power.all.map {|power| [power.name, power.id] }
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine
  end
  def search
    
  end

  def edit
    @power_options = Power.all.map {|power| [power.name, power.id] }
  end
  def update
    @heroine.update(heroine_params)
    redirect_to @heroine
  end
  def destroy
    @heroine.destroy
    redirect_to heroines_path
  end

  private
  def selected_heroine
    @heroine = Heroine.find(params[:id])
  end

  def selected_heroine
    @heroine = Heroine.find(params[:id])
  end
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
