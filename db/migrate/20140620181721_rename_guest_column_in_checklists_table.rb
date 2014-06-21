class RenameGuestColumnInChecklistsTable < ActiveRecord::Migration
  def change
  	rename_column :checklists, :guest_id, :user_id
  end
end
