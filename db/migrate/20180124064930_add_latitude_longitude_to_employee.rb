class AddLatitudeLongitudeToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :longitude, :float
    add_column :employees, :latitude, :float
  end
end
