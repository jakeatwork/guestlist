class AddNotesColumnToEventGuests < ActiveRecord::Migration
  def change
  	add_column :eventguests, :notes, :text
  end
end
