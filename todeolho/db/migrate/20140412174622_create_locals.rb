class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :uf
      t.string :municipio
      t.string :cep
      t.convenio :references

      t.timestamps
    end
  end
end
