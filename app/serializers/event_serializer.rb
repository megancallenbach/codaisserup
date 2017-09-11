class EventSerializer < ActiveModel::Serializer
  attributes :name, :description, :location, :price, :capacity, :starts_at, :ends_at, :includes_food, :includes_drinks

  has_many :registrations
end
