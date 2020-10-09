class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :edad
      t.date :fecha_nacimiento
      t.string :sexo
      t.string :colonia
      t.string :direccion
      t.string :telefono, null: true
      t.string :celular
      t.string :apodo, null: true
      t.string :facebook, null: true

      t.timestamps
    end
  end
end
