Types::WeaponType = GraphQL::ObjectType.define do
  name "Weapon"

  field :id, !types.ID
  field :name, !types.String
end
