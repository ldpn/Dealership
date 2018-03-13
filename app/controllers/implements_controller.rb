class ImplementsController < ApplicationController
	def index
		@implements = Implement.workhorse
	end

	def show
		@implement = Implement.find(params[:id])
	end 

	def edit
		@implement = Implement.find(params[:id])
	end

	def update
		@implement = Implement.find(params[:id])
		if @implement.update(implement_params)
			redirect_to @implement, notice: "Event successfully update!"
		else
			render :edit
		end
	end

	def new
		@implement = Implement.new
	end

	def create
		@implement = Implement.new(implement_params)
		if @implement.save
			redirect_to @implement
		else
			render :new
		end
	end

	def destroy
		@implement = Implement.find(params[:id])
		@implement.destroy
		redirect_to implements_url
	end

	private

	def implement_params
		params.require(:implement).permit(:model, :description, :equipment_category, :hp, :list_price, :special_offers, :in_stock, :image_file_name)
	end

end
