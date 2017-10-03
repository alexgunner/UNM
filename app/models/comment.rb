class Comment < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :content, presence: true
  validates :name, length: { in: 6..25, wrong_length: "El nombre del comentario debe tener entre 6 a 25 caracteres"}
  validates :content, length: { in: 50..500, wrong_length: "El contenido del comentario debe tener entre 50 a 500 caracteres"}
end
