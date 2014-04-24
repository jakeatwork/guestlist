class AddNameToGuest < ActiveRecord::Migration
  def change
  	add_column :guests, :name, :string
  	add_column :guests, :email, :string
  	add_column :guests, :phone, :string
  	add_column :guests, :addons, :integer
  end
end
