# frozen_string_literal: true

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::BaseModel
      # @!attribute id
      #   The message identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The message creation date.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #   The message expiration date.
      #
      #   @return [Time]
      required :expires_at, Time

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

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol => String}]
      required :variables, PreludeSDK::HashOf[String]

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

      # @!attribute from
      #   The Sender ID.
      #
      #   @return [String]
      optional :from, String

      # @!parse
      #   # @param id [String] The message identifier.
      #   #
      #   # @param created_at [String] The message creation date.
      #   #
      #   # @param expires_at [String] The message expiration date.
      #   #
      #   # @param template_id [String] The template identifier.
      #   #
      #   # @param to [String] The recipient's phone number.
      #   #
      #   # @param variables [Hash{Symbol => String}] The variables to be replaced in the template.
      #   #
      #   # @param callback_url [String] The callback URL.
      #   #
      #   # @param correlation_id [String] A unique, user-defined identifier that will be included in webhook events.
      #   #
      #   # @param from [String] The Sender ID.
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     expires_at:,
      #     template_id:,
      #     to:,
      #     variables:,
      #     callback_url: nil,
      #     correlation_id: nil,
      #     from: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
