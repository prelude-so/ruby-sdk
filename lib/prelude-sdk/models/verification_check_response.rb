# frozen_string_literal: true

module PreludeSDK
  module Models
    # @example
    #
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

      # @!attribute id
      #   The verification identifier.
      #
      #   @return [String]
      optional :id, String

      # @!attribute metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCheckResponse::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCheckResponse::Metadata }

      # @!attribute request_id
      #
      #   @return [String]
      optional :request_id, String

      # @!parse
      #   # @param status [String] The status of the check.
      #   #
      #   # @param id [String] The verification identifier.
      #   #
      #   # @param metadata [PreludeSDK::Models::VerificationCheckResponse::Metadata] The metadata for this verification.
      #   #
      #   # @param request_id [String]
      #   #
      #   def initialize(status:, id: nil, metadata: nil, request_id: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # The status of the check.
      #
      # @example
      #
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
      end

      # @example
      #
      # ```ruby
      # metadata => {
      #   correlation_id: String
      # }
      # ```
      class Metadata < PreludeSDK::BaseModel
        # @!attribute correlation_id
        #
        #   @return [String]
        optional :correlation_id, String

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
