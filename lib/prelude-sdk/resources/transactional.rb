# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Transactional
      # Send a transactional message to your user.
      #
      # @param params [PreludeSDK::Models::TransactionalSendParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :template_id The template identifier.
      #
      #   @option params [String] :to The recipient's phone number.
      #
      #   @option params [String] :callback_url The callback URL.
      #
      #   @option params [String] :correlation_id A unique, user-defined identifier that will be included in webhook events.
      #
      #   @option params [String] :expires_at The message expiration date.
      #
      #   @option params [String] :from The Sender ID.
      #
      #   @option params [Hash{Symbol=>String}] :variables The variables to be replaced in the template.
      #
      #   @option params [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [PreludeSDK::Models::TransactionalSendResponse]
      #
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

      # @param client [PreludeSDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
