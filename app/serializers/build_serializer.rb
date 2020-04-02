class BuildSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :budget
  has_one :user
  has_many :parts
end
