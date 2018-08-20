class PowersController < ApplicationController
    before_action :set_power, only: [:show, :edit, :update, :destroy]

    def index
      @powers = Power.all
    end

    def show
      # byebug
    end

    def new
      @power = Power.new
    end

    def edit
    end

    def create
      @power = Power.new(power_params)

      if @power.save
        redirect_to power_path(@power)
      else
        render :new
      end
    end

    def update
      if @power.update(power_params)
        redirect_to @power
      else
        render :edit
      end
    end

    def destroy
      @power.destroy

      redirect_to powers_path
    end

    private

      def set_power
        @power = Power.find(params[:id])
      end

      def power_params
        params.require(:power).permit(:name, :description)
      end
  end
