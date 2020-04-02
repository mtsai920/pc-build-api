class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :part_type, :cost, :description
  has_one :build
end
