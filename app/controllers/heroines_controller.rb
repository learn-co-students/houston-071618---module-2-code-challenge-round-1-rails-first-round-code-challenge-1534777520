class HeroinesController < ApplicationController
  before_action :current_heroine, only:[:show, :edit]
  before_action :current_heroine_power, only:[:show, :edit]
  

  def index
    @heroines = Heroine.all
  end

  
  def show
    
  end
  
  def new
    @powers = Power.all
      @heroine = Heroine.new
   
  
  end
  
  def create
  @heroine = Heroine.new(heroine_params)
        
  redirect_to heroines_path
  
  end 
  
     
    
  
  def edit
  end
  
  def update
      heroine = Heroine.find(params[:id])
      heroine.update(heroine_params)
  
      redirect_to heroine
  end 
  
  def destroy
      heroine = Heroine.find(params[:id])
      heroine.destroy
      redirect_to heroines_path 
  end 
  
    private 
  
  def heroine_params
      params.require(:heroine).permit(:name, :dob, :experience_level)
  end
  
  def current_heroine
      @heroine = Heroine.find(params[:id])
  end 
  def current_heroine_power
    @power = Power.all
  end
  
end
