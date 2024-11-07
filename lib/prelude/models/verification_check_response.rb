# frozen_string_literal: true

module Prelude
  module Models
    class VerificationCheckResponse < Prelude::BaseModel
      # @!attribute [rw] id
      #   The verification identifier.
      #   @return [String]
      optional :id, String

      # @!attribute [rw] metadata
      #   The metadata for this verification.
      #   @return [Prelude::Models::VerificationCheckResponse::Metadata]
      optional :metadata, -> { Prelude::Models::VerificationCheckResponse::Metadata }

      # @!attribute [rw] status
      #   The status of the check.
      #   @return [Symbol, Prelude::Models::VerificationCheckResponse::Status]
      optional :status, enum: -> { Prelude::Models::VerificationCheckResponse::Status }

      class Metadata < Prelude::BaseModel
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
      class Status < Prelude::Enum
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
      #   #   @option data [String, nil] :status The status of the check.
      #   def initialize(data = {}) = super
    end
  end
end
