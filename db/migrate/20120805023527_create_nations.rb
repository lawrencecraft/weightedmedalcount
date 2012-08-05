class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :ioc_code
      t.string :name
      t.integer :bronze
      t.integer :gold
      t.integer :silver

      t.timestamps
    end
  end
end
