class Comentario < ActiveRecord::Base
  alias_attribute :fecha_publicacion, :created_at

  belongs_to :entrada

  validates :texto, :length => { :maximum => 255 }, :presence => true
  validates :entrada, :presence => true
end
