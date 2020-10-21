class ForeingKeyPatientUser < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :patients, :users
  end
end
