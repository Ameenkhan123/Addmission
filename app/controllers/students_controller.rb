class StudentsController < ApplicationController

  def index
    @students = Student.where.not(Firstname: nil)
    # @students = Student.search(params[:student])
    @students = Student.order('addmission_date')
      @q = Student.ransack(params[:q])
    @students = @q.result

  end

 
  def show
    @student = Student.friendly.find(params[:id])
  end


  def new
  	@student = Student.new
  end


  def create
  	@student = Student.new(student_params)
  	@student.save(validate: false)
  	redirect_to student_step_path(@student, Student.form_steps.first)
  end


  def destroy
      @student = Student.friendly.find(params[:id])
        @student.destroy
        redirect_to students_path
  end

  private
    def student_params
    	params.require(:student).permit(:student_id,:first_name, :last_name, :dob, :gender, :blood_group, :birth_place, :Category,:student_class, :session, :address_line1, :address_line2, :city, :state, :pincode, :phone_no, :photo, :father_name,
    		:mother_name,:ocupasion, :income,:emergency_no,:previous_school_name, :obtained, :previous_class, :adharcard, :previous_school_marksheet, :addmission_date)
    end
end
