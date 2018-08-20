class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all

    @powers = Power.search(params[:search])
  end

  def show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def edit
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @heroine.save
    redirect_to @heroine
  end

  def update
    @heroine.update(heroine_params)
    redirect_to @heroine
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_url
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
