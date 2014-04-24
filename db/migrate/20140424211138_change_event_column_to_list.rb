class ChangeEventColumnToList < ActiveRecord::Migration
  def change
  	rename_column :guests, :event_id, :list_id
  end
end
