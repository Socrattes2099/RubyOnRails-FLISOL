class Entrada < ActiveRecord::Base

  alias_attribute :fecha_publicacion, :created_at
  has_many :comentarios

  validates :titulo, :length => 10..80
  validates :contenido, :length => { :maximum => 255 }, :presence => true
end
