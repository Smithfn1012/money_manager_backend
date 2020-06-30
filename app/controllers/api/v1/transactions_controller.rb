class Api::V1::TransactionsController < ApplicationController
before_action :set_account

  def index
    @transactions = Transaction.all
    render json: @transactions
  end
end
