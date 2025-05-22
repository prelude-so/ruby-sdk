# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Lookup
      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::LookupLookupParams} for more details.
      #
      # Retrieve detailed information about a phone number including carrier data, line
      # type, and portability status.
      #
      # @overload lookup(phone_number, type: nil, request_options: {})
      #
      # @param phone_number [String] An E.164 formatted phone number to look up.
      #
      # @param type [Array<Symbol, PreludeSDK::Models::LookupLookupParams::Type>] Optional features. Possible values are:
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::LookupLookupResponse]
      #
      # @see PreludeSDK::Models::LookupLookupParams
      def lookup(phone_number, params = {})
        parsed, options = PreludeSDK::LookupLookupParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v2/lookup/%1$s", phone_number],
          query: parsed,
          model: PreludeSDK::Models::LookupLookupResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
