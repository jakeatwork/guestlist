class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists, id: false do |t|
      t.belongs_to :guest
      t.belongs_to :list

      t.timestamps
    end
  end
end
