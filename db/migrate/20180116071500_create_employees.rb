class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.datetime :joining_date
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :gender
      t.string :department
      t.string :position
      t.string :job_title
      t.string :qualification
      t.string :experience
      t.string :maritel_status
      t.string :qualification
      t.string :father_name
      t.string :mother_name
      t.string :spocecom
      t.string :blood_group
      t.string :photo
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :pincode
      t.string :phone_no
      t.string :email
      t.string :adharcard
      t.string :pan_card
      t.string :voter_card
      t.string :passport
      t.string :last_degree
      t.string :experience_certificate

      t.timestamps
    end
  end
end
