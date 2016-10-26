class Students < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :user
      t.references :phase

      t.timestamps null:false
    end
  end
end
