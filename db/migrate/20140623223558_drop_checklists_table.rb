class DropChecklistsTable < ActiveRecord::Migration
  def change
  	drop_table :checklists
  	drop_table :guestlists
  	drop_table :guests
  end
end
