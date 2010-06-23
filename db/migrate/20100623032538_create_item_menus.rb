class CreateItemMenus < ActiveRecord::Migration
  def self.up
    create_table :item_menus do |t|
      t.string :titulo
      t.string :url
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :item_menus
  end
end
