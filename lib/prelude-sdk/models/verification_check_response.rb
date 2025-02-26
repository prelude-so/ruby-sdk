# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
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

      # @!attribute [r] status
      #   The status of the check.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status, nil]
      optional :status, enum: -> { PreludeSDK::Models::VerificationCheckResponse::Status }

      # @!parse
      #   # @return [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      #   attr_writer :status

      # @!parse
      #   # @param id [String]
      #   # @param metadata [PreludeSDK::Models::VerificationCheckResponse::Metadata]
      #   # @param request_id [String]
      #   # @param status [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      #   #
      #   def initialize(id: nil, metadata: nil, request_id: nil, status: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      class Metadata < PreludeSDK::BaseModel
        # @!attribute [r] correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :correlation_id

        # @!parse
        #   # The metadata for this verification.
        #   #
        #   # @param correlation_id [String]
        #   #
        #   def initialize(correlation_id: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end

      # @abstract
      #
      # The status of the check.
      #
      # @example
      # ```ruby
      # case status
      # in :success
      #   # ...
      # in :failure
      #   # ...
      # in :expired
      #   # ...
      # end
      # ```
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        FAILURE = :failure
        EXPIRED = :expired

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
