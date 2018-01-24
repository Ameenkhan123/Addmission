class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :gender
      t.string :blood_group
      t.string :birth_place
      t.string :category
      t.string :student_class
      t.string :session
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.numeric :pincode
      t.numeric :phone_no
      t.string :photo
      t.datetime :addmission_date
      t.string :father_name
      t.string :mother_name
      t.numeric :emergency_no
      t.string :previous_school_name
      t.string :obtained
      t.string :previous_class
      t.string :adharcard
      t.string :previous_school_marksheet

      t.timestamps
    end
  end
end
