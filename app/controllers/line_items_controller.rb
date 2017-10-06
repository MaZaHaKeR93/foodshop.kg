class LineItemsController < ApplicationController

	def create
		@line_item = LineItem.new(line_items_params)
		@line_item.save
		respond_to do |format|
			format.html { redirect_to establishments_path}
			format.js {}
		end		
	end
	
	def destroy
		@line_item = LineItem.destroy(params[:id])

		respond_to do |format|
  		format.html { redirect_to establishments_path }
  		format.js {}
    end		
	end

	def destroy_all
		LineItem.delete_all

		respond_to do |format|
  		format.html { redirect_to establishments_path }
  		format.js {}
    end
	end

	def create_cart
		@cart = Cart.new
		@cart.save
		redirect_to establishments_path
	end
	
	private

	def line_items_params
		params.require(:line_item).permit(:title, :quantity, :price, :cart_id)
	end
end
