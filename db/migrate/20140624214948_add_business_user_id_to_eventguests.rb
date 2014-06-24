class AddBusinessUserIdToEventguests < ActiveRecord::Migration
  def change
  	add_column :eventguests, :business_user, :integer
  end
end
