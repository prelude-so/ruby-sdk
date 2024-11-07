# frozen_string_literal: true

module Prelude
  module Resources
    class Retry
      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
      end

      # Perform a retry
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :authentication_uuid The authentication UUID that was returned when you created the authentication.
      #   @option params [String] :customer_uuid Your customer UUID, which can be found in the API settings in the dashboard.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::RetryCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/retry",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::RetryCreateResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
