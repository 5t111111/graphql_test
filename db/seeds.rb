# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sub_weapons = [
  {
    name: "スプラッシュボム",
    description: "基本インク消費量は70％。投擲型ボム。接地後に地面を転がり、しばらくしてから爆発する。爆発は、至近距離ならば相手を一撃で倒すことができる攻撃力がある"
  },
  {
    name: "キューバンボム",
    description: "基本インク消費量は70％。壁や地面にくっつくボム。くっついた後、しばらくしてから爆発する。爆風は至近距離で当たると相手を一撃で倒すことができる"
  },
  {
    name: "クイックボム",
    description: "基本インク消費量は40％。投てき系ボム。 壁・地面・障害物・プレイヤーなど、何かにぶつかるとすぐに爆発する。 威力は低いが1コあたりのインク消費量は少なく、連続して投げられる"
  },
  {
    name: "カーリングボム",
    description: "特殊な投擲系。基本インク消費量は70％。投げると地面を滑るように進み、その後爆発するボム。爆風は至近距離で当たると相手を一撃で倒すことができる。滑っているボムが相手に当たるとダメージを与えるが、爆発はしない"
  },
  {
    name: "ロボットボム",
    description: "基本インク消費量は70％。 投げつけると円が出て、その中にいる相手を探知し、自ら歩いて近づき爆発する。"
  },
]

sub_weapons.each do |sub_weapon|
  SubWeapon.find_or_create_by(
    name: sub_weapon[:name],
    description: sub_weapon[:description]
  )
end

weapons = [
  {
    name: "スプラシューター",
    sub_weapon: "クイックボム"
  },
  {
    name: "スプラシューターコラボ",
    sub_weapon: "スプラッシュボム"
  },
  {
    name: "わかばシューター",
    sub_weapon: "スプラッシュボム"
  },
  {
    name: "もみじシューター",
    sub_weapon: "ロボットボム"
  },
  {
    name: "スプラローラー",
    sub_weapon: "カーリングボム"
  },
]

weapons.each do |weapon|
  Weapon.find_or_create_by(
    name: weapon[:name],
    sub_weapon_id: SubWeapon.find_by!(name: weapon[:sub_weapon]).id
  )
end
