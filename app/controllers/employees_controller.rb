class EmployeesController < ApplicationController

  def index
    @employees = Employee.where.not(first_name: nil)
     # @employees = Employee.search(params[:employee])
        @q = Employee.ransack(params[:q])
    @employees = @q.result

  end

 
   def show
 @employee = Employee.friendly.find(params[:id])
  end


  def new
  	@employee = Employee.new
  end

  
  def create
  	@employee = Employee.new(employee_params)
  	@employee.save(validate: false)
  	redirect_to employee_step_path(@employee, Employee.form_steps.first)
  end

  def destroy
      @employee = Employee.friendly.find(params[:id])
        @employee.destroy
        redirect_to employees_path
  end

  private
    def employee_params
    	params.require(:employee).permit(:employee_id,:joining_date, :first_name,:last_name,:dob, :gender, :department, :position,:job_title, :qualification, :experience, :maritel_status, :qualification, :father_name, :mother_name, :blood_group, :spocecom,:photo,:address_line1, :address_line2,:city, :state, :pincode, :phone_no, :email,:adharcard, :pan_card, :passport, :last_degree, :experience_certificate, :voter_card)
    end
end
