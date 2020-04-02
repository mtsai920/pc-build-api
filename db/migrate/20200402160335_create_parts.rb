class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_type
      t.integer :cost
      t.string :description
      t.references :build, foreign_key: true

      t.timestamps
    end
  end
end
