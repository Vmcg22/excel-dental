class CreateSubstances < ActiveRecord::Migration[6.0]
  def change
    create_table :substances do |t|
      t.boolean :fuma
      t.boolean :toma

      t.timestamps
    end
  end
end
