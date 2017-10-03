class Course < ApplicationRecord
  validates :name, :content, :type, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 6..50, wrong_length: "El nombre del curso debe tener entre 6 a 50 caracteres" }
  validates :description, length: { minimum: 50, too_short: "La descripcion del curso debe tener minimo 50 caracteres"  }
end
