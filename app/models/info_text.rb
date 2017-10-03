class InfoText < ApplicationRecord
  validates :title, uniqueness: true
  validates :content, :title, presence: true
  validates :content, length: { in: 50..500, wrong_length: "El contenido del texto informativo
    debe tener entre 50 a 500 caracteres"  }
end
