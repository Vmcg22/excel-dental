class ForeingKeyPatientMedicine < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :patients, :medicines
  end
end
