class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :titulo
      t.integer :item_menu_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
