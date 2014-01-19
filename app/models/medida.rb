class Medida < ActiveRecord::Base
  belongs_to :sensor

  validates :sensor, :fecha, presence: { message: "Campo Obligatorio"}
  validates :valor, numericality: true
end
