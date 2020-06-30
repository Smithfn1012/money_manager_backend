class Transaction < ApplicationRecord
    belongs_to :account
    validates :amount, presence: true
    validates_inclusion_of :exchange, :in => ['deposit', 'withdraw']
end
