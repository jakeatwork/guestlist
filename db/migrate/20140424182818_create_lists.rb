class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :venue_id
      t.integer :event_id
      t.integer :performer_id

      t.timestamps
    end
  end
end
