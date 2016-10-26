class StudentFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :student_feedbacks do |t|
      t.string :body,            null:false
      t.references :appointment

      t.timestamps null:false
    end
  end
end
