class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :respuesta

      t.timestamps
    end
  end
end
