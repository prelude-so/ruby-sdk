# frozen_string_literal: true

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::BaseModel
      # @!attribute [rw] template_id
      #   The template identifier.
      #   @return [String]
      required :template_id, String

      # @!attribute [rw] to
      #   The recipient's phone number.
      #   @return [String]
      required :to, String

      # @!attribute [rw] callback_url
      #   The callback URL.
      #   @return [String]
      optional :callback_url, String

      # @!attribute [rw] correlation_id
      #   A unique, user-defined identifier that will be included in webhook events.
      #   @return [String]
      optional :correlation_id, String

      # @!attribute [rw] expires_at
      #   The message expiration date.
      #   @return [String]
      optional :expires_at, String

      # @!attribute [rw] from
      #   The Sender ID.
      #   @return [String]
      optional :from, String

      # @!attribute [rw] variables
      #   The variables to be replaced in the template.
      #   @return [Hash]
      optional :variables, Hash
    end
  end
end
