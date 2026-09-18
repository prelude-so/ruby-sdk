# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        class PhoneVerificationCarrier < PreludeSDK::Internal::Type::BaseModel
          # @!attribute mccmnc
          #
          #   @return [String]
          required :mccmnc, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(mccmnc:, name: nil)
          #   The end user's mobile network.
          #
          #   @param mccmnc [String]
          #   @param name [String]
        end
      end

      PhoneVerificationCarrier = Phone::PhoneVerificationCarrier
    end
  end
end
