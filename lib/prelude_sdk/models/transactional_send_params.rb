# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Transactional#send_
    class TransactionalSendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

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
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this transactional message with. It is
      #   returned in the response and any webhook events that refer to this
      #   transactionalmessage.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute expires_at
      #   The message expiration date.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!attribute from
      #   The Sender ID.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute locale
      #   A BCP-47 formatted locale string with the language the text message will be sent
      #   to. If there's no locale set, the language will be determined by the country
      #   code of the phone number. If the language specified doesn't exist, the default
      #   set on the template will be used.
      #
      #   @return [String, nil]
      optional :locale, String

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!method initialize(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, variables: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::TransactionalSendParams} for more details.
      #
      #   @param template_id [String] The template identifier.
      #
      #   @param to [String] The recipient's phone number.
      #
      #   @param callback_url [String] The callback URL.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this transactional message with. It is re
      #
      #   @param expires_at [String] The message expiration date.
      #
      #   @param from [String] The Sender ID.
      #
      #   @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
      #
      #   @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
