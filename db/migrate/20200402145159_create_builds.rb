class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.string :name
      t.string :description
      t.integer :budget
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
