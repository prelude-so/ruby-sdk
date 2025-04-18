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

      # @!attribute [r] id
      #   The verification identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCheckResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCheckResponse::Metadata }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCheckResponse::Metadata]
      #   attr_writer :metadata

      # @!attribute [r] request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :request_id

      # @!method initialize(status:, id: nil, metadata: nil, request_id: nil)
      #   @param status [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      #   @param id [String]
      #   @param metadata [PreludeSDK::Models::VerificationCheckResponse::Metadata]
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
        # @!attribute [r] correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :correlation_id

        # @!method initialize(correlation_id: nil)
        #   The metadata for this verification.
        #
        #   @param correlation_id [String]
      end
    end
  end
end
