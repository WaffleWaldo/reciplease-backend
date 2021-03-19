class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :image_url, :description
  has_many :ingredients
end
