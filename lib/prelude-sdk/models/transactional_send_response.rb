# frozen_string_literal: true

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::BaseModel
      # @!attribute [rw] id
      #   The message identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   The message creation date.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] expires_at
      #   The message expiration date.
      #   @return [Time]
      required :expires_at, Time

      # @!attribute [rw] template_id
      #   The template identifier.
      #   @return [String]
      required :template_id, String

      # @!attribute [rw] to
      #   The recipient's phone number.
      #   @return [String]
      required :to, String

      # @!attribute [rw] variables
      #   The variables to be replaced in the template.
      #   @return [Hash]
      required :variables, Hash

      # @!attribute [rw] callback_url
      #   The callback URL.
      #   @return [String]
      optional :callback_url, String

      # @!attribute [rw] correlation_id
      #   A unique, user-defined identifier that will be included in webhook events.
      #   @return [String]
      optional :correlation_id, String

      # @!attribute [rw] from
      #   The Sender ID.
      #   @return [String]
      optional :from, String

      # @!parse
      #   # Create a new instance of TransactionalSendResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The message identifier.
      #   #   @option data [String] :created_at The message creation date.
      #   #   @option data [String] :expires_at The message expiration date.
      #   #   @option data [String] :template_id The template identifier.
      #   #   @option data [String] :to The recipient's phone number.
      #   #   @option data [Hash] :variables The variables to be replaced in the template.
      #   #   @option data [String, nil] :callback_url The callback URL.
      #   #   @option data [String, nil] :correlation_id A unique, user-defined identifier that will be included in webhook events.
      #   #   @option data [String, nil] :from The Sender ID.
      #   def initialize(data = {}) = super
    end
  end
end
