class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.belongs_to :day
      t.string :title
      t.boolean :done
      t.timestamps null: false
    end
  end
end
