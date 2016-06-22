class CreateMigeneros < ActiveRecord::Migration
  def change
    create_table :migeneros do |t|
      t.string :genero
      t.integer :idgenero

      t.timestamps null: false
    end
  end
end
