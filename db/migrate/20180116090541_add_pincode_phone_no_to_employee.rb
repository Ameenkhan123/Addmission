class AddPincodePhoneNoToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :pincode, :string
    add_column :employees, :phone_no, :string
  end
end
