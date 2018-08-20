class HeroinesController < ApplicationController

  def index
    if params[:search]
      @heroines = Heroine.joins(:power).where("powers.name LIKE ?", "%#{params[:search]}%")
    else
      @heroines = Heroine.all
    end
  end


  def show
    @heroine = Heroine.find(params[:id])
  end

  # def edit
  #   @heroine = Heroine.find(params[:id])
  # end

  def new
    @heroine = Heroine.new
  end

  # def create
  #   @heroine = Heroine.create(heroine_params)
  #   redirect_to heroines_path
  # end

  def create
   @heroine = Heroine.new(heroine_params)
   if @heroine.valid?
     @heroine.save
     redirect_to heroines_path
   else
     render :new
   end
 end

  # def update
  #   @heroine = Heroine.find(params[:id])
  #   @heroine.update(heroine_params)
  #   redirect_to heroines_path
  # end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
