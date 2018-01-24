class AddPincodePhoneNoOcupasionIncomeToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :pincode, :string
    add_column :students, :phone_no, :string
    add_column :students, :ocupasion, :string
    add_column :students, :income, :string
  end
end
