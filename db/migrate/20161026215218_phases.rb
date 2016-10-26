class Phases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.integer :number, null:false

      t.timestamps null:false
    end
  end
end
