class Student::StepsController < ApplicationController
  include Wicked::Wizard
  steps *Student.form_steps

  def show
    @student = Student.find(params[:student_id])
    render_wizard
  end

  def update
    @student = Student.find(params[:student_id])
    @student.update(student_params(step))
    render_wizard @student
  end

  private

  def student_params(step)
    permitted_attributes = case step
                           when "identity"
                             [:first_name, :last_name,:dob, :addmission_date, :gender, :blood_group, :birth_place,:student_class, :category,:session, :address_line1, :address_line2, :city, :state, :pincode, :phone_no, :photo]
                           when "characteristics"
                             [:father_name, :dob,:ocupasion, :income, :mother_name, :address_line1, :address_line2, :city, :state, :pincode, :phone_no, :emergency_no]
                           when "instructions"
                             [:previous_school_name, :obtained, :previous_class, :adharcard, :previous_school_marksheet]
                           end

    params.require(:student).permit(permitted_attributes).merge(form_step: step)
  end

end