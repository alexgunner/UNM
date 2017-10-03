class Notice < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :title, :link, presence: true
  validates :title, length: { in: 15..70, wrong_length: "El titulo de la noticia debe tener entre 15 a 70 caracteres"  }
end
