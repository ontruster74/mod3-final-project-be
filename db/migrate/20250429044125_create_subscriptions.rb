class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.decimal :price
      t.string :status
      t.string :frequency

      t.timestamps
    end
  end
end
