class AddEmergencyNoToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :emergency_no, :string
  end
end
