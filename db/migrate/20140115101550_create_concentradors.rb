class CreateConcentradors < ActiveRecord::Migration
  def change
    create_table :concentradors do |t|
      t.belongs_to :categoria_equipo, index: true, :default => 1, :null =>false
      t.string :nombre, :unique => true, :presence=>true, :null => false
      t.string :descripcion, :default => '--'
      t.string :estado, :null =>false
      t.float :gis_latitud, :default => 0.0
      t.float :gis_longitud, :default => 0.0
      t.string :mac_address
      t.string :numero_serie
      t.string :ip_address
      t.integer :ip_port, :default => 80

      t.timestamps
    end
  end
end
