User.destroy_all
Friend.destroy_all
Moment.destroy_all

'create seeds...'

lucie_user = User.create!(
    email: "lucie@gmail.com",
    first_name: "lucie",
    last_name: "BT",
    password: "password",
    avatar: "https://res.cloudinary.com/dj1gs8bsd/image/upload/v1579358185/xcp3qxuwb8fk0aa23cna.jpg"
)

rokas_friend = Friend.create!(
    name: "rokas",
    email: "rokas@gmail.com",
    phone_number: "0333339444",
    token: "TOKEN494949494958TOKEN",
    user_id: lucie_user.id
)

moment1 = Moment.create!(
    text_content: "Yo bitch!",
    seen: false,
    media: "https://res.cloudinary.com/dj1gs8bsd/image/upload/v1579355852/z8yzpokt5mpgur8zzn1m.jpg",
    user_id: lucie_user.id
)
