class Admin::DishesController < AdminController
	def index
		@dishes = Dish.all
	end

	def new
		@dish = Dish.new
	end

	def create
		@dish = Dish.new(dishes_params)

		@dish.save

		redirect_to admin_dishes_path

	end

	def destroy
		@dish = Dish.destroy(params[:id])

		redirect_to admin_dishes_path
	end

	def edit
		@dish = Dish.find(params[:id])
	end

	def update
		@dish = Dish.find(params[:id])
		if @dish.update(dishes_params)
			redirect_to admin_dishes_path
		else
			render 'edit'
		end
	end

	private

	def dishes_params
		params.require(:dish).permit(:title, :price, :description, :category_id)
	end
end
