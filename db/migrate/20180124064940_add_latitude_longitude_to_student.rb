class AddLatitudeLongitudeToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :longitude, :float
    add_column :students, :latitude, :float
  end
end
