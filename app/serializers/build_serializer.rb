class BuildSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :budget, :cpu, :gpu, :motherboard, :ram,
             :cooler, :power_supply, :storage, :other
  has_one :user
end
