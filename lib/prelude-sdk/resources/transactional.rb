# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Transactional
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end

      # Send a transactional message to your user.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :template_id The template identifier.
      #   @option params [String] :to The recipient's phone number.
      #   @option params [String, nil] :callback_url The callback URL.
      #   @option params [String, nil] :correlation_id A unique, user-defined identifier that will be included in webhook events.
      #   @option params [String, nil] :expires_at The message expiration date.
      #   @option params [String, nil] :from The Sender ID.
      #   @option params [Hash, nil] :variables The variables to be replaced in the template.
      #
      # @param opts [Hash{Symbol => Object}, PreludeSDK::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [PreludeSDK::Models::TransactionalSendResponse]
      def send(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/transactional",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: PreludeSDK::Models::TransactionalSendResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
