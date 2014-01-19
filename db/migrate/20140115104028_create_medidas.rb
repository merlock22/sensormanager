class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.belongs_to :sensor, index: true, :null => false, :default => 1
      t.date :fecha, :null => false
      t.float :valor, :default => 0.0

      t.timestamps
    end
  end
end
