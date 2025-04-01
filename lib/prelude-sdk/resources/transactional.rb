# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Transactional
      # Send a transactional message to your user.
      #
      # @overload send_(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, variables: nil, request_options: {})
      #
      # @param template_id [String]
      # @param to [String]
      # @param callback_url [String]
      # @param correlation_id [String]
      # @param expires_at [String]
      # @param from [String]
      # @param locale [String]
      # @param variables [Hash{Symbol=>String}]
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::TransactionalSendResponse]
      #
      # @see PreludeSDK::Models::TransactionalSendParams
      def send_(params)
        parsed, options = PreludeSDK::Models::TransactionalSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/transactional",
          body: parsed,
          model: PreludeSDK::Models::TransactionalSendResponse,
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
