class ForeingKeyPatientAllergy < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :patients, :allergies
  end
end
