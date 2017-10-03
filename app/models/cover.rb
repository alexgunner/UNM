class Cover < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :description, :title, presence: true
  validates :description, length: { in: 10..150, wrong_length: "La descripcion de la portada debe tener entre 10 a 150 caracteres"  }
  validates :title, length: { in: 10..35, wrong_length: "El titulo de la portada debe tener entre 10 a 35 caracteres"  }
end
