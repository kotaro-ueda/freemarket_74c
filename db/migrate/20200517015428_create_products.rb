class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true,         null: false
      t.references :brand, foreign_key: true,            null: false
      t.references :user, foreign_key: true,             null: false
      t.string :name,                                    null: false
      t.string :descriptions,                            null: false
      t.integer :price,                                  null: false
      t.integer :status,                                 null: false
      t.string :fee,                                     null: false
      t.string :delivery_time,                           null: false
      t.string :area,                                    null: false
      t.string :quality,                                 null: false
      t.string :size,                                    null: true
      t.timestamps
    end
  end
end
