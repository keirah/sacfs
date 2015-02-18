class ChangeConsultantTypeName < ActiveRecord::Migration
  def change
  	rename_column :consultants, :type, :discipline
  end
end
