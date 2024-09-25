class Estudiante < ApplicationRecord
    validates_presence_of :nombres
    validates_format_of :nombres, with: /\A[a-zA-Z\s]+\z/, message: "solo puede contener letras"
    validates_length_of :nombres, maximum: 30
  
    validates_presence_of :apellidos
    validates_format_of :apellidos, with: /\A[a-zA-Z\s]+\z/, message: "solo puede contener letras"
    validates_length_of :apellidos, maximum: 30
  
    validates_presence_of :carrera
    validates_length_of :carrera, maximum: 50
  
    validates_presence_of :carnet
    validates_length_of :carnet, maximum: 20
end
