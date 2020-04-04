class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.string :name
      t.string :description
      t.integer :budget
      t.string :cpu
      t.string :gpu
      t.string :motherboard
      t.string :ram
      t.string :cooler
      t.string :power_supply
      t.string :storage
      t.string :other
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
