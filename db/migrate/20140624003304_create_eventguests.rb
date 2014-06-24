class CreateEventguests < ActiveRecord::Migration
  def change
    create_table :eventguests do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :type_id
      t.integer :extras
      t.boolean :attended

      t.timestamps
    end
  end
end
