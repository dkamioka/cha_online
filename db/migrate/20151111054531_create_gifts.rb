class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end
