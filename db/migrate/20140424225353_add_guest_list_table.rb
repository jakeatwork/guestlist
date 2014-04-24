class AddGuestListTable < ActiveRecord::Migration
  def change
  	  create_table :guests_lists do |t|
      t.belongs_to :guests
      t.belongs_to :lists
    end
  end
end
