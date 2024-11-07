# frozen_string_literal: true

module Prelude
  module Resources
    class Check
      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
      end

      # Check a code
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :authentication_uuid The authentication UUID that was returned when you created the authentication.
      #   @option params [String] :check_code The code that the user entered.
      #   @option params [String] :customer_uuid Your customer UUID, which can be found in the API settings in the Dashboard.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::CheckCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/check",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::CheckCreateResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
