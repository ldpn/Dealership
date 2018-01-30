class ImplementsController < ApplicationController
	def index
		@implements = Implement.all
	end

	def show
		@implement = Implement.find(params[:id])
	end 
end
