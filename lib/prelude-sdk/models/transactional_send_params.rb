# frozen_string_literal: true

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::BaseModel
      # @!attribute template_id
      #   The template identifier.
      #
      #   @return [String]
      required :template_id, String

      # @!attribute to
      #   The recipient's phone number.
      #
      #   @return [String]
      required :to, String

      # @!attribute callback_url
      #   The callback URL.
      #
      #   @return [String]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A unique, user-defined identifier that will be included in webhook events.
      #
      #   @return [String]
      optional :correlation_id, String

      # @!attribute expires_at
      #   The message expiration date.
      #
      #   @return [String]
      optional :expires_at, String

      # @!attribute from
      #   The Sender ID.
      #
      #   @return [String]
      optional :from, String

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol => String}]
      optional :variables, PreludeSDK::HashOf[String]

      # @!parse
      #   # @param template_id [String] The template identifier.
      #   #
      #   # @param to [String] The recipient's phone number.
      #   #
      #   # @param callback_url [String, nil] The callback URL.
      #   #
      #   # @param correlation_id [String, nil] A unique, user-defined identifier that will be included in webhook events.
      #   #
      #   # @param expires_at [String, nil] The message expiration date.
      #   #
      #   # @param from [String, nil] The Sender ID.
      #   #
      #   # @param variables [Hash{Symbol => String}, nil] The variables to be replaced in the template.
      #   #
      #   def initialize(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, variables: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
