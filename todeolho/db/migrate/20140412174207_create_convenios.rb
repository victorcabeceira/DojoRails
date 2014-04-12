class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.int :codigo
      t.string :nome
      t.String :situacao
      t.int :valor
      t.date :dataPublicacao
      t.date :dataInicio
      t.date :dataFim

      t.timestamps
    end
  end
end
