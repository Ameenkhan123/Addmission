class Employee::StepsController < ApplicationController
  include Wicked::Wizard
  steps *Employee.form_steps

  def show
    @employee = Employee.find(params[:employee_id])
    render_wizard
  end

  def update
    @employee = Employee.find(params[:employee_id])
    @employee.update(employee_params(step))
    render_wizard @employee
  end

  private

  def employee_params(step)
    permitted_attributes = case step
                           when "identity"
                             [:joining_date, :first_name,:last_name,:dob, :gender, :department, :position,:job_title, :qualification, :experience, :maritel_status, :notification, :father_name, :mother_name, :blood_group, :spocecom,:photo]
                           when "characteristics"
                             [:address_line1, :address_line2,:city, :state, :pincode, :phone_no, :email]
                           when "instructions"
                             [:adharcard, :pan_card, :passport, :last_degree, :experience_certificate, :voter_card]
                           end

    params.require(:employee).permit(permitted_attributes).merge(form_step: step)
  end

end