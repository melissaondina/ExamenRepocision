class CreateMiautors < ActiveRecord::Migration
  def change
    create_table :miautors do |t|
      t.string :nombre
      t.integer :idautor

      t.timestamps null: false
    end
  end
end
