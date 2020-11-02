class AddMedicineIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :medicine_id, :integer
  end
end
