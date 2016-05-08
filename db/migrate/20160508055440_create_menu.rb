class CreateMenu < ActiveRecord::Migration
  def change
    create_table :menus do |t|
    	t.string :item_desc
    	t.string :item_name
    	t.float :item_price

    end
    add_reference(:menus,:restaurant, foreign_key:true)
  end
end
