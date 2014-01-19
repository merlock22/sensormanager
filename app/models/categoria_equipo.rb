class CategoriaEquipo < ActiveRecord::Base
  has_many :concentradors
  has_many :sensors, :through => :concentradors
  has_many :medidas, :through => :sensors

  validates :nombre, presence: { message: " Obligatorio"}, uniqueness: {message: " debe ser unico"}
end
