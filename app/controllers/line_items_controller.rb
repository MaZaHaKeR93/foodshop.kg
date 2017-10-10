class LineItemsController < ApplicationController

	def create		
		@line_item = LineItem.new(line_items_params)
		if LineItem.where(user_id: current_user.id).length == 0
			@line_item.save
			redirect_to establishments_path, notice: 'Item successfully added to cart'
		elsif LineItem.where(user_id: current_user.id).last.establishment_id == @line_item.establishment_id
			@line_item.save
			redirect_to establishment_path(LineItem.where(user_id: current_user.id).last.establishment_id), 
			notice: 'Item successfully added to cart'				
		else
			establishment_id = LineItem.where(user_id: current_user.id).last.establishment_id
			establishment_title = Establishment.find(LineItem.where(user_id: current_user.id).last.establishment_id).title
			redirect_to establishment_path(establishment_id), notice: "Only for #{establishment_title}"
		end
	end
	
	def destroy
		@line_item = LineItem.destroy(params[:id])
		redirect_to establishments_path, notice: 'Item successfully deleted from cart'
	end

	def destroy_all
		LineItem.delete_all "user_id = #{current_user.id}"
  	redirect_to establishments_path, notice: 'Your cart is empty now'
	end

	private

	def line_items_params
		params.require(:line_item).permit(:title, :quantity, :price, :establishment_id, :user_id)
	end
end