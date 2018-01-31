class AddSlugToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :slug, :string
  end
end
