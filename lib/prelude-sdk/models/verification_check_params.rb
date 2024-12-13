# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckParams < PreludeSDK::BaseModel
      # @!attribute [rw] code
      #   The OTP code to validate.
      #   @return [String]
      required :code, String

      # @!attribute [rw] target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #   @return [PreludeSDK::Models::VerificationCheckParams::Target]
      required :target, -> { PreludeSDK::Models::VerificationCheckParams::Target }

      class Target < PreludeSDK::BaseModel
        # @!attribute [rw] type
        #   The type of the target. Currently this can only be "phone_number".
        #   @return [Symbol, PreludeSDK::Models::VerificationCheckParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::VerificationCheckParams::Target::Type }

        # @!attribute [rw] value
        #   An E.164 formatted phone number to verify.
        #   @return [String]
        required :value, String

        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number
        end

        # @!parse
        #   # Create a new instance of Target from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :type The type of the target. Currently this can only be "phone_number".
        #   #   @option data [String] :value An E.164 formatted phone number to verify.
        #   def initialize(data = {}) = super
      end
    end
  end
end
