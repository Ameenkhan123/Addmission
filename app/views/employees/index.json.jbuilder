json.array!(@employees) do |employee|
  json.extract! employee, :id:employee_id,:joining_date, :first_name,:last_name,:dob, :gender, :department, :position,:job_title, :qualification, :experience, :maritel_status, :qualification, :father_name, :mother_name, :blood_group, :spocecom,:photo,:address_line1, :address_line2,:city, :state, :pincode, :phone_no, :email,:adharcard, :pan_card, :passport, :last_degree, :experience_certificate, :voter_card
   )
    
  json.url student_url(employee, format: :json)
end