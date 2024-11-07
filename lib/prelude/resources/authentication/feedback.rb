# frozen_string_literal: true

module Prelude
  module Resources
    class Authentication
      class Feedback
        # @param client [Prelude::Client]
        def initialize(client:)
          @client = client
        end

        # Send feedback
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_uuid Your customer UUID, which can be found in the API settings in the dashboard.
        #   @option params [String] :phone_number An E.164 formatted phone number.
        #   @option params [Symbol, Status] :status The type of the feedback.
        #
        # @param opts [Hash{Symbol => Object}, Prelude::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Prelude::Models::FeedbackCreateResponse]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/authentication/feedback",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Prelude::Models::FeedbackCreateResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
