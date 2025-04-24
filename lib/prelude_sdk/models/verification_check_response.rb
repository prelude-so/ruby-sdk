# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#check
    class VerificationCheckResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute status
      #   The status of the check.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCheckResponse::Status }

      # @!attribute id
      #   The verification identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCheckResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCheckResponse::Metadata }

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!method initialize(status:, id: nil, metadata: nil, request_id: nil)
      #   @param status [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status] The status of the check.
      #
      #   @param id [String] The verification identifier.
      #
      #   @param metadata [PreludeSDK::Models::VerificationCheckResponse::Metadata] The metadata for this verification.
      #
      #   @param request_id [String]

      # The status of the check.
      #
      # @see PreludeSDK::Models::VerificationCheckResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see PreludeSDK::Models::VerificationCheckResponse#metadata
      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   The metadata for this verification.
        #
        #   @param correlation_id [String]
      end
    end
  end
end
