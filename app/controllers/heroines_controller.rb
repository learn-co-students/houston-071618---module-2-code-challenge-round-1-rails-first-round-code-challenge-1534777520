class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :destroy]

  def index
    # @heroines = Heroine.all
    @heroines = Heroine.search(params[:search])
  end

  def show
    # byebug
  end

  def new
    @heroine = Heroine.new
  end

  def edit
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  def destroy
    @heroine.destroy

    redirect_to heroines_path
  end

  private

    def set_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id, :search)
    end
end
