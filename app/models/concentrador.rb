class Concentrador < ActiveRecord::Base
  belongs_to :categoria_equipo
  has_many :sensors
  has_many :medidas, :through => :sensors
  
  validates :categoria_equipo, :nombre, :estado, presence: { message: " Obligatorio"}
  validates :nombre, uniqueness: {message: " debe ser unico"}
  validates :gis_latitud, :gis_longitud, numericality: true
end
