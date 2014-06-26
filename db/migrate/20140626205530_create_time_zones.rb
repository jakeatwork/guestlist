class CreateTimeZones < ActiveRecord::Migration
  def change
    create_table :time_zones do |t|
      t.string :name
      t.string :code
      t.text :location

      t.timestamps
    end
  end
end
