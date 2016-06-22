class CreateMislibros < ActiveRecord::Migration
  def change
    create_table :mislibros do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :idautor
      t.integer :idgenero

      t.timestamps null: false
    end
  end
end
