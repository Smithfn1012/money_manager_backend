class Transaction < ApplicationRecord
    belongs_to :account
    validates :amount, presence: true
    validates_inclusion_of :account_type, :in => ['deposit', 'withdraw']
end
