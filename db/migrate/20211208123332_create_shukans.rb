class CreateShukans < ActiveRecord::Migration[5.2]
  def change
    create_table :shukans do |t|
      t.string :title
      t.integer :position
      t.references :user, foreign_key: true
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
