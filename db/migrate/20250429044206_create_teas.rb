class CreateTeas < ActiveRecord::Migration[7.1]
  def change
    create_table :teas do |t|
      t.string :title
      t.text :description
      t.integer :temperature
      t.integer :brewtime
      t.references :subscription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
