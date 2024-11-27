# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      # @!attribute [rw] id
      #   The verification identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] method_
      #   The method used for verifying this phone number.
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      required :method_,
               api_name: :method,
               enum: -> {
                 PreludeSDK::Models::VerificationCreateResponse::Method
               }

      # @!attribute [rw] status
      #   The status of the verification.
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Status }

      # @!attribute [rw] metadata
      #   The metadata for this verification.
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!attribute [rw] request_id
      #   @return [String]
      optional :request_id, String

      # The method used for verifying this phone number.
      class Method < PreludeSDK::Enum
        MESSAGE = :message
      end

      # The status of the verification.
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked
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
      #   # Create a new instance of VerificationCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The verification identifier.
      #   #   @option data [String] :method The method used for verifying this phone number.
      #   #   @option data [String] :status The status of the verification.
      #   #   @option data [Object, nil] :metadata The metadata for this verification.
      #   #   @option data [String, nil] :request_id
      #   def initialize(data = {}) = super
    end
  end
end
