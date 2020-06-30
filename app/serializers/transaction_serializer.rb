class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :exchange, :date, :description, :account_id

  def date
    self.object.date.strftime("%m/%d/%Y %I:%M%p") 
  end
end
