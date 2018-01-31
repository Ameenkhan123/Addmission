class AddOcupasionToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :ocupasion, :string
  end
end
