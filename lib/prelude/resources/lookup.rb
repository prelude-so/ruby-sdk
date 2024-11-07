# frozen_string_literal: true

module Prelude
  module Resources
    class Lookup
      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
      end

      # Look up for phone number
      #
      # @param phone_number [String] An E.164 formatted phone number to look up.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_uuid Your customer UUID, which can be found in the API settings in the dashboard.
      #
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::LookupRetrieveResponse]
      def retrieve(phone_number, _params = {}, opts = {})
        req = {
          method: :get,
          path: "/lookup/#{phone_number}",
          model: Prelude::Models::LookupRetrieveResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
