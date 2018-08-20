class HeroinesController < ApplicationController
	def index
		@heroines = Heroine.all

		# @powers = Power.search(heroine_params)
	end

	def self.search(term)
		if term
			where("name LIKE ?", "%#{term}%")
		else
			all
		end
	end

	def show
		@heroine = Heroine.find(params[:id])
	end

	def edit
		@heroine = Heroine.find(params[:id])
	end

	def update
		@heroine = Heroine.find(params[:id])
		@heroine.update(heroine_params)

		redirect_to @heroine
	end

	def new
		@heroine = Heroine.new
	end

	def create
		@heroine = Heroine.new(heroine_params)

		if @heroine.save
			redirect_to @heroine
		else 
			redirect_to heroines_path
		end
	end


	private

	def heroine_params
		params.require(:heroine).permit(:name, :super_name, :power_id, :term)
	end
end
