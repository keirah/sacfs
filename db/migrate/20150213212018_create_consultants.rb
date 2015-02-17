class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :discipline
      t.string :title
      t.string :firstname
      t.string :surname
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :phone
      t.string :fax
      t.string :url
      t.decimal :lat
      t.decimal :lng
      t.text :description

      t.timestamps null: false
    end
  end
end
