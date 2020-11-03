class ForeingKeyPatientSubstance < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :patients, :substances
  end
end
