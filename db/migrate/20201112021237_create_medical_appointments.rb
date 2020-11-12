class CreateMedicalAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_appointments do |t|
      t.text :motivo
      t.datetime :fecha
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
