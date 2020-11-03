class AddSubstanceIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :substance_id, :integer
  end
end
