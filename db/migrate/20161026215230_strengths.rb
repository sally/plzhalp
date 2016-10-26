class Strengths < ActiveRecord::Migration[5.0]
  def change
    create_table :strengths do |t|
      t.references :mentor
      t.references :topic

      t.timestamps null:false
    end
  end
end
