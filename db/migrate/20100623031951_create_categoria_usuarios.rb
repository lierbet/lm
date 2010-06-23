class CreateCategoriaUsuarios < ActiveRecord::Migration
  def self.up
    create_table :categoria_usuarios do |t|
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :categoria_usuarios
  end
end
