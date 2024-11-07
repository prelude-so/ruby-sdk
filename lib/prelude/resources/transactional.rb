# frozen_string_literal: true

module Prelude
  module Resources
    class Transactional
      # @param client [Prelude::Client]
      def initialize(client:)
        @client = client
      end

      # Send a transactional message
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
      # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Prelude::Models::TransactionalSendResponse]
      def send(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v2/transactional",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Prelude::Models::TransactionalSendResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
