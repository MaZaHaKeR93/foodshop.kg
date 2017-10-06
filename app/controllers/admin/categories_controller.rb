class Admin::CategoriesController < AdminController
	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(categories_params)

		@category.save

		redirect_to admin_categories_path

	end

	def destroy
		@category = Category.destroy(params[:id])

		redirect_to admin_categories_path
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(categories_params)
			redirect_to admin_categories_path
		else
			render 'edit'
		end
	end

	private

	def categories_params
		params.require(:category).permit(:title, :establishment_id)
	end
end
