class PowersController < ApplicationController
  before_action :current_power, only:[:show, :edit]
 
  

  def index
    @powers = Power.all
  end

  
  def show
    
  end
  
  def new
    
      @power = Power.new
   
  
  end
  
  def create
  @power = Power.new(power_params)
        
  redirect_to powers_path
  
  end 
  
     
    
  
  def edit
  end
  
  def update
      power = Power.find(params[:id])
      power.update(power_params)
  
      redirect_to power
  end 
  
  def destroy
      power = Power.find(params[:id])
      power.destroy
      redirect_to powers_path 
  end 
  
    private 
  
  def power_params
      params.require(:power).permit(:name, :dob, :experience_level)
  end
  
  def current_power
      @power = Power.find(params[:id])
  end 
  
  
end

