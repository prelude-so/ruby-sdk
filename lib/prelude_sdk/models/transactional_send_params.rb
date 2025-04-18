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
      #   A unique, user-defined identifier that will be included in webhook events.
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
      #   @param template_id [String]
      #   @param to [String]
      #   @param callback_url [String]
      #   @param correlation_id [String]
      #   @param expires_at [String]
      #   @param from [String]
      #   @param locale [String]
      #   @param variables [Hash{Symbol=>String}]
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
