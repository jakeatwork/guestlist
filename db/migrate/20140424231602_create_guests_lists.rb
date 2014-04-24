class CreateGuestsLists < ActiveRecord::Migration
  def change
    create_table :guests_lists do |t|
      t.integer :guest_id
      t.integer :list_id

      t.timestamps
    end
  end
end
