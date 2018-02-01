class Student < ApplicationRecord
   extend FriendlyId
    friendly_id :name, use: :slugged
    
	  cattr_accessor :form_steps do
    %w(identity characteristics instructions)
  end

  attr_accessor :form_step

  validates :first_name,:address_line2, presence: true, if: -> { required_for_step?(:identity) }
  validates :father_name, presence: true, if: -> { required_for_step?(:characteristics) }
  validates :adharcard, presence: true, if: -> { required_for_step?(:instructions) }

  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end

def self.search(student)
  if student
    where('student_id or first_name or last_name or previous_school_name or phone_no  LIKE ?', "%#{student}%").order('id DESC')
  else
    order('id DESC') 
  end
end
  mount_uploader :photo, PhotoUploader
  mount_uploader :adharcard, PhotoUploader
   mount_uploader :previous_school_marksheet, PhotoUploader

def name
    "#{self.first_name} #{self.last_name}"
  end


end
