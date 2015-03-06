class PocketContentsController < ApplicationController
  respond_to :json

  def show
    pocket_params = {consumer_key: ENV['POCKET_CONSUMER_KEY'],
                     access_token: ENV['POCKET_ACCESS_TOKEN']}

    begin
      last_pocket_entry = Pocket.client(pocket_params).retrieve(detailType: :simple, count: 1)
      render json: last_pocket_entry
    rescue => e
      error_response = {error: 'Unable to communicate with Pocket Api', message: e.message}
      render json: error_response, status: :internal_server_error
    end
  end
end