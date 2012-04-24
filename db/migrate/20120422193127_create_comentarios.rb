class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :texto
      t.integer :entrada_id

      t.timestamps
    end

    add_index :comentarios, :id
    add_index :comentarios, :entrada_id
  end
end
