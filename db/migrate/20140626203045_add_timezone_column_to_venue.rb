class AddTimezoneColumnToVenue < ActiveRecord::Migration
  def change
  	add_column :venues, :time_zone_id, :string

  	create_table :time_zones do |t|
      t.string :name
      t.text :location

      t.timestamps
    end
  end
end
