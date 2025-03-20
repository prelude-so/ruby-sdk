# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # @!attribute code
      #   The OTP code to validate.
      #
      #   @return [String]
      required :code, String

      # @!attribute target
      #   The verification target. Either a phone number or an email address. To use the
      #     email verification feature contact us to discuss your use case.
      #
      #   @return [PreludeSDK::Models::VerificationCheckParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCheckParams::Target }

      # @!parse
      #   # @param code [String]
      #   # @param target [PreludeSDK::Models::VerificationCheckParams::Target]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(code:, target:, request_options: {}, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      class Target < PreludeSDK::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCheckParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # The verification target. Either a phone number or an email address. To use the
        #   #   email verification feature contact us to discuss your use case.
        #   #
        #   # @param type [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        #   # @param value [String]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Enum

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          finalize!
        end
      end
    end
  end
end
