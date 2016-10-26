class Mentors < ActiveRecord::Migration[5.0]
  def change
    create_table :mentors do |t|
      t.references :user

      t.timestamps null:false
    end
  end
end
