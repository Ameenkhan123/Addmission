class Employee < ApplicationRecord
   extend FriendlyId
    friendly_id :name, use: :slugged
    
	  cattr_accessor :form_steps do
    %w(identity characteristics instructions)
  end

  attr_accessor :form_step

  validates :first_name,:department, presence: true, if: -> { required_for_step?(:identity) }
  validates :phone_no,:city, presence: true, if: -> { required_for_step?(:characteristics) }
  validates :adharcard, presence: true, if: -> { required_for_step?(:instructions) }

  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end


def self.search(employee)
  if employee
    where('employee_id or first_name or last_name or phone_no or job_title or department or address_line1  LIKE ?', "%#{employee}%").order('id DESC')
  else
    order('id DESC') 
  end
end

  mount_uploader :photo, PhotoUploader
  mount_uploader :adharcard, PhotoUploader
  mount_uploader :pan_card, PhotoUploader
  mount_uploader :voter_card, PhotoUploader
  mount_uploader :passport, PhotoUploader
  mount_uploader :last_degree, PhotoUploader
  mount_uploader :experience_certificate, PhotoUploader

def name
    "#{self.first_name} #{self.last_name}"
  end

end
