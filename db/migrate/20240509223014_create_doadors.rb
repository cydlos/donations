class CreateDoadors < ActiveRecord::Migration[7.0]
  def change
    create_table :doadors do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.text :ofertas

      t.timestamps
    end
  end
end
