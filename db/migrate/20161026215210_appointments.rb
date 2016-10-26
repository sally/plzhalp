class Appointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :mentor
      t.references :student
      t.date :date,       null:false
      t.time :start_time, null:false
      t.time :end_time,   null:false

      t.timestamps null:false
    end
  end
end
