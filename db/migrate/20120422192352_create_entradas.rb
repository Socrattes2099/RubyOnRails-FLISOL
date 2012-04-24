class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.string :titulo
      t.string :contenido

      t.timestamps
    end

    add_index :entradas, :id
  end
end
