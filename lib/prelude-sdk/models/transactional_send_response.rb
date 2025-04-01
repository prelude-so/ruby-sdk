# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Transactional#send_
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
      #   @return [Hash{Symbol=>String}]
      required :variables, PreludeSDK::HashOf[String]

      # @!attribute [r] callback_url
      #   The callback URL.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :callback_url

      # @!attribute [r] correlation_id
      #   A unique, user-defined identifier that will be included in webhook events.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :correlation_id

      # @!attribute [r] from
      #   The Sender ID.
      #
      #   @return [String, nil]
      optional :from, String

      # @!parse
      #   # @return [String]
      #   attr_writer :from

      # @!parse
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param expires_at [Time]
      #   # @param template_id [String]
      #   # @param to [String]
      #   # @param variables [Hash{Symbol=>String}]
      #   # @param callback_url [String]
      #   # @param correlation_id [String]
      #   # @param from [String]
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
