class Account < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true

    def balance_update(transaction)
        if transaction.exchange == 'deposit'
            self.balance = self.balance + transaction.amount
            self.save
        elsif transaction.exchange == 'withdraw'
            if self.balance >= transaction.amount
                self.balance = self.balance - transaction.amount
                self.save
            else
                return 'Insufficient Funds.'
            end
        end
    end

end
