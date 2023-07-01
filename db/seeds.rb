# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(
    email: 'test1@example.com',
    password: '0000',
    created_at: '2023-07-02 00:00:00.000000000 +0000',
    name: 'sender',
    LinePay: false,
    PayPay: true,
    RakutenPay: false,
    DocomoPay: false,
    MerPay: false,
    AuPay: false
)
user.save!

user2 = User.new(
    email: 'test2@example.com',
    password: '0000',
    created_at: '2023-07-02 00:00:00.000000000 +0000',
    name: 'receiver',
    LinePay: true,
    PayPay: false,
    RakutenPay: false,
    DocomoPay: false,
    MerPay: false,
    AuPay: false
)
user2.save!

