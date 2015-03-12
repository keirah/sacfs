class ChangeColumnNamesLatLng < ActiveRecord::Migration
  def change
    rename_column :consultants, :lat, :latitude
    rename_column :consultants, :lng, :longitude
  end
end
