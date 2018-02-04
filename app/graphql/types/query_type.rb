Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :weapon, Types::WeaponType do
    argument :name, !types.String
    resolve ->(obj, args, ctx) {
      Weapon.find_by!(name: args[:name])
    }
  end

  field :sub_weapon, Types::SubWeaponType do
    argument :name, !types.String
    resolve ->(obj, args, ctx) {
      SubWeapon.find_by!(name: args[:name])
    }
  end
end
