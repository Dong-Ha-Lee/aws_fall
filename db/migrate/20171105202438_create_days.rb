class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.string :title
      t.boolean :done
      t.timestamps null: false
    end
  end
end
