class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.belongs_to :concentrador, index: true, :default =>1, :null =>false
      t.string :nombre, :null => false
      t.string :descripcion, :default =>'--'
      t.string :estado
      t.string :parametro
      t.float :valor, :default => 0.0
      t.string :uds

      t.timestamps
    end
  end
end
