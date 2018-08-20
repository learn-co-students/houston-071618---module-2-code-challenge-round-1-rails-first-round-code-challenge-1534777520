class PowersController < ApplicationController

  def index
    @powers = Power.all
	end
	
	def show
		@power = Power.find(params[:id])
	end

	def new

	end 

	def create

	end 

	def edit

	end 

	def update

	end 

	def destroy

	end 

end
