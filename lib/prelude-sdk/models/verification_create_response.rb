# frozen_string_literal: true

module PreludeSDK
  module Models
    # @example
    # ```ruby
    # verification_create_response => {
    #   id: String,
    #   method_: enum: PreludeSDK::Models::VerificationCreateResponse::Method,
    #   status: enum: PreludeSDK::Models::VerificationCreateResponse::Status,
    #   metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
    #   request_id: String
    # }
    # ```
    class VerificationCreateResponse < PreludeSDK::BaseModel
      # @!attribute id
      #   The verification identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute method_
      #   The method used for verifying this phone number.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      required :method_,
               enum: -> {
                 PreludeSDK::Models::VerificationCreateResponse::Method
               },
               api_name: :method

      # @!attribute status
      #   The status of the verification.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Status }

      # @!attribute metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!attribute request_id
      #
      #   @return [String]
      optional :request_id, String

      # @!parse
      #   # @param id [String] The verification identifier.
      #   #
      #   # @param method_ [String] The method used for verifying this phone number.
      #   #
      #   # @param status [String] The status of the verification.
      #   #
      #   # @param metadata [PreludeSDK::Models::VerificationCreateResponse::Metadata] The metadata for this verification.
      #   #
      #   # @param request_id [String]
      #   #
      #   def initialize(id:, method_:, status:, metadata: nil, request_id: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # The method used for verifying this phone number.
      #
      # @example
      # ```ruby
      # case method
      # in :message
      #   # ...
      # end
      # ```
      class Method < PreludeSDK::Enum
        MESSAGE = :message

        finalize!
      end

      # The status of the verification.
      #
      # @example
      # ```ruby
      # case status
      # in :success
      #   # ...
      # in :retry
      #   # ...
      # in :blocked
      #   # ...
      # end
      # ```
      class Status < PreludeSDK::Enum
        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked

        finalize!
      end

      # @example
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
