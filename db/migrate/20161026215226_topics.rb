class Topics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name, null:false
      t.references :phase

      t.timestamps null:false
    end
  end
end
