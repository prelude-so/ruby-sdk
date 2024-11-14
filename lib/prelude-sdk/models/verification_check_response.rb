# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
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

      # @!attribute [rw] status
      #   The status of the check.
      #   @return [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      optional :status, enum: -> { PreludeSDK::Models::VerificationCheckResponse::Status }

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

      # The status of the check.
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        FAILURE = :failure
        EXPIRED = :expired
      end

      # @!parse
      #   # Create a new instance of VerificationCheckResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :id The verification identifier.
      #   #   @option data [Object, nil] :metadata The metadata for this verification.
      #   #   @option data [String, nil] :request_id
      #   #   @option data [String, nil] :status The status of the check.
      #   def initialize(data = {}) = super
    end
  end
end
