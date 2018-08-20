class HeroinesController < ApplicationController
  before_action :load_heroine
  
  def index
    @heroines = Heroine.all
  end
  
  def show
  end
  
  def new
    @power_options = Power.all.map {|power| [power.name, power.id]}
  end
  
  def create
    heroine = Heroine.new(heroine_params)
    
    if heroine.save
      heroine.save
      redirect_to heroine
    else
      # byebug
      @power_options = Power.all.map {|power| [power.name, power.id]}
      render :new 
    end
  end
  
  def edit 
    @power_options = Power.all.map {|power| [power.name, power.id]}
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
  
  def load_heroine
    if params[:id] != nil
      @heroine = Heroine.find(params[:id])
    else
      @heroine = Heroine.new
    end
  end
  
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
