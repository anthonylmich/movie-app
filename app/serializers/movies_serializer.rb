class MoviesSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :pllot, :english

  has_many :genres
end
