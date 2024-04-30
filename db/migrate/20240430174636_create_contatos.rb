class CreateContatos < ActiveRecord::Migration[7.1]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :telefone
      t.text :mensagem

      t.timestamps
    end
  end
end
