class Sensor < ActiveRecord::Base
  belongs_to :concentrador
  has_many :medidas
  
  validates :concentrador, :nombre, :estado, :parametro, :valor, presence: { message: "Campo Obligatorio"}
  validates :valor, numericality: true
end
