# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account = Account.create(name: 'Checking', balance: 1250)

transaction = Transaction.create(account_id: 1, amount: 100, exchange: 'deposit', date: DateTime.now, description: 'Won $100')

transaction_two = Transaction.create(account_id: 1, amount: 100, exchange: 'withdraw', date: DateTime.now, description: 'Won $100')
