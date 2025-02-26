# frozen_string_literal: true

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

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

      # @!attribute [r] expires_at
      #   The message expiration date.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!parse
      #   # @return [String]
      #   attr_writer :expires_at

      # @!attribute [r] from
      #   The Sender ID.
      #
      #   @return [String, nil]
      optional :from, String

      # @!parse
      #   # @return [String]
      #   attr_writer :from

      # @!attribute [r] variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :variables

      # @!parse
      #   # @param template_id [String]
      #   # @param to [String]
      #   # @param callback_url [String]
      #   # @param correlation_id [String]
      #   # @param expires_at [String]
      #   # @param from [String]
      #   # @param variables [Hash{Symbol=>String}]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     template_id:,
      #     to:,
      #     callback_url: nil,
      #     correlation_id: nil,
      #     expires_at: nil,
      #     from: nil,
      #     variables: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
