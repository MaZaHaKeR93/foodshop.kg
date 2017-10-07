class CartsController < ApplicationController
	def create
    Cart.create!()
	end
end