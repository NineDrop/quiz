class NumbersController < ApplicationController

	def index
		@number = Number.new
	end

	def create
		@number = Number.create(number_params)
		redirect_to root_path
	end


	private

	def number_params
		params.require(:number).permit(:value)
	end
end