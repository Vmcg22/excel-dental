class CreateMedicalFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_files do |t|
      t.datetime :fecha
      t.string :foto_expediente
      t.string :foto_contrato

      t.timestamps
    end
  end
end
