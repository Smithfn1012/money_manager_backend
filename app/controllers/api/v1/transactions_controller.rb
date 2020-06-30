class Api::V1::TransactionsController < ApplicationController
before_action :set_account

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def create
    @transaction = @account.transaction.new(transaction_params)
    @transaction.date = Datetime.now
    if @account.balance_update(@transactions != 'Insufficient Funds.')
        @transaction.save
        render json: @account
    else
        render json: {error: 'Insufficient Funds.'}
    end
end

def destroy
    @transaction = Transaction.find(params["id"])
    @account = Account.find(@transaction.account_id)

    if @account.balance_update_on_delete(@transaction)
        @transaction.destroy
        render json: @account
    else 
        render json: {error: 'Insufficient Funds.'}
    end
end

end
