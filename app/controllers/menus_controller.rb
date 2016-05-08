class MenusController < ApplicationController
	def new
		@menu =Menu.new
	end
	def show
		@menu=Menu.find(params[:id])
	end
	def create
		 menu = Menu.new(menu_get)
        menu.save
		redirect_to menu_path(menu.id)
	end
	private
	def menu_get
		params.require(:menu).permit(:item_desc,:item_name,:item_price,:restaurant_id)
end

end
