class CreateConexaos < ActiveRecord::Migration[7.0]
  def change
    create_table :conexaos do |t|
      t.references :vitima, null: false, foreign_key: true
      t.references :doador, null: false, foreign_key: true

      t.timestamps
    end
  end
end
