class CreateShukans < ActiveRecord::Migration[5.2]
  def change
    create_table :shukans do |t|
      t.string :title
      t.done :position
      t.references :user, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
