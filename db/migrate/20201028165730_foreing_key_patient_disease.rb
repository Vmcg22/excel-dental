class ForeingKeyPatientDisease < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :patients, :diseases
  end
end
