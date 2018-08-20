class HeroinesController < ApplicationController
  helper_method :selected_heroine

  def update
    @heroine = selected_heroine.update(heroine_params)

    redirect_to heroine_path
  end

  def index
    @heroines = Heroine.all
  end


  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to heroines_path
  end

  def edit
    @heroine = selected_heroine
  end

  def show
    @heroine = selected_heroine
  end

  def selected_heroine
    Heroine.find(params[:id])
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
