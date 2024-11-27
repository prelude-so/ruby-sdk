# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      # @!attribute [rw] status
      #   The status of the check.
      #   @return [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCheckResponse::Status }

      # @!attribute [rw] id
      #   The verification identifier.
      #   @return [String]
      optional :id, String

      # @!attribute [rw] metadata
      #   The metadata for this verification.
      #   @return [PreludeSDK::Models::VerificationCheckResponse::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCheckResponse::Metadata }

      # @!attribute [rw] request_id
      #   @return [String]
      optional :request_id, String

      # The status of the check.
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found
      end

      class Metadata < PreludeSDK::BaseModel
        # @!attribute [rw] correlation_id
        #   @return [String]
        optional :correlation_id, String

        # @!parse
        #   # Create a new instance of Metadata from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :correlation_id
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of VerificationCheckResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :status The status of the check.
      #   #   @option data [String, nil] :id The verification identifier.
      #   #   @option data [Object, nil] :metadata The metadata for this verification.
      #   #   @option data [String, nil] :request_id
      #   def initialize(data = {}) = super
    end
  end
end
