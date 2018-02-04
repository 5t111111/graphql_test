Types::SubWeaponType = GraphQL::ObjectType.define do
  name "SubWeapon"
  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  connection :weapons, !Types::WeaponType.connection_type
end
