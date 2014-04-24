class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :event_id
      t.integer :type_id
      t.text :comments

      t.timestamps
    end
  end
end
