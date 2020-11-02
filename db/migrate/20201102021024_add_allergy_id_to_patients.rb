class AddAllergyIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :allergy_id, :integer
  end
end
