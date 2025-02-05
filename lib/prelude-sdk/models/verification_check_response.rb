# frozen_string_literal: true

module PreludeSDK
  module Models
    # @example
    # ```ruby
    # verification_check_response => {
    #   status: PreludeSDK::Models::VerificationCheckResponse::Status,
    #   id: String,
    #   metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
    #   request_id: String
    # }
    # ```
    class VerificationCheckResponse < PreludeSDK::BaseModel
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

      # @!parse
      #   # @param status [Symbol, PreludeSDK::Models::VerificationCheckResponse::Status]
      #   # @param id [String]
      #   # @param metadata [PreludeSDK::Models::VerificationCheckResponse::Metadata]
      #   # @param request_id [String]
      #   #
      #   def initialize(status:, id: nil, metadata: nil, request_id: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

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
      # in :expired_or_not_found
      #   # ...
      # end
      # ```
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # metadata => {
      #   correlation_id: String
      # }
      # ```
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
    end
  end
end
