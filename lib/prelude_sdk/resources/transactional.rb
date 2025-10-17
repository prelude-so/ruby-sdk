# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Transactional
      # Some parameter documentations has been truncated, see
      # {PreludeSDK::Models::TransactionalSendParams} for more details.
      #
      # Send a transactional message to your user.
      #
      # @overload send_(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, preferred_channel: nil, variables: nil, request_options: {})
      #
      # @param template_id [String] The template identifier.
      #
      # @param to [String] The recipient's phone number.
      #
      # @param callback_url [String] The callback URL.
      #
      # @param correlation_id [String] A user-defined identifier to correlate this transactional message with. It is re
      #
      # @param expires_at [String] The message expiration date.
      #
      # @param from [String] The Sender ID.
      #
      # @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
      #
      # @param preferred_channel [Symbol, PreludeSDK::Models::TransactionalSendParams::PreferredChannel] The preferred delivery channel for the message. When specified, the system will
      #
      # @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::TransactionalSendResponse]
      #
      # @see PreludeSDK::Models::TransactionalSendParams
      def send_(params)
        parsed, options = PreludeSDK::TransactionalSendParams.dump_request(params)
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
