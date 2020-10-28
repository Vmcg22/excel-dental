class AddDiseaseIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :disease_id, :integer
  end
end
