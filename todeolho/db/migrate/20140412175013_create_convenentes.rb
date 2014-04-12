class CreateConvenentes < ActiveRecord::Migration
  def change
    create_table :convenentes do |t|
      t.string :nome
      t.string :codigo
      t.convenio :references

      t.timestamps
    end
  end
end
