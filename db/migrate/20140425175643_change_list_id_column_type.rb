class ChangeListIdColumnType < ActiveRecord::Migration
  def change
  	remove_column :guests, :list_id
  end
end
