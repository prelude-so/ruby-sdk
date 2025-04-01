# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#create
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
      required :method_, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Method }, api_name: :method

      # @!attribute status
      #   The status of the verification.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Status }

      # @!attribute [r] metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      #   attr_writer :metadata

      # @!attribute [r] request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :request_id

      # @!parse
      #   # @param id [String]
      #   # @param method_ [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      #   # @param status [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      #   # @param metadata [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      #   # @param request_id [String]
      #   #
      #   def initialize(id:, method_:, status:, metadata: nil, request_id: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # The method used for verifying this phone number.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#method_
      module Method
        extend PreludeSDK::Enum

        MESSAGE = :message

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The status of the verification.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#status
      module Status
        extend PreludeSDK::Enum

        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see PreludeSDK::Models::VerificationCreateResponse#metadata
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
