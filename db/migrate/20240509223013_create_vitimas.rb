class CreateVitimas < ActiveRecord::Migration[7.0]
  def change
    create_table :vitimas do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.text :necessidade

      t.timestamps
    end
  end
end
