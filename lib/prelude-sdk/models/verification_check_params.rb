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
      #   The target. Currently this can only be an E.164 formatted phone number.
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
        #   The type of the target. Currently this can only be "phone_number".
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCheckParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number to verify.
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # The target. Currently this can only be an E.164 formatted phone number.
        #   #
        #   # @param type [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        #   # @param value [String]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # @abstract
        #
        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number

          finalize!
        end
      end
    end
  end
end
