class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.integer :guest_id
      t.integer :list_id

      t.timestamps
    end
  end
end
