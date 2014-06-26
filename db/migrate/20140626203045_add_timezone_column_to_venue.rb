class AddTimezoneColumnToVenue < ActiveRecord::Migration
  def change
  	add_column :venues, :time_zone_id, :string
  end
end
