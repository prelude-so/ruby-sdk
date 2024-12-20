# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
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
      #   # @param code [String] The OTP code to validate.
      #   #
      #   # @param target [PreludeSDK::Models::VerificationCheckParams::Target] The target. Currently this can only be an E.164 formatted phone number.
      #   #
      #   def initialize(code:, target:, **) = super

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
        #   # @param type [String] The type of the target. Currently this can only be "phone_number".
        #   #
        #   # @param value [String] An E.164 formatted phone number to verify.
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Currently this can only be "phone_number".
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :phone_number
        #   # ...
        # end
        # ```
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number

          finalize!
        end
      end
    end
  end
end
