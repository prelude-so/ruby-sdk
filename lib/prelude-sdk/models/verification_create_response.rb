# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
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
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!parse
      #   # @return [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      #   attr_writer :metadata

      # @!attribute [r] method_
      #   The method used for verifying this phone number.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method, nil]
      optional :method_, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Method }, api_name: :method

      # @!parse
      #   # @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      #   attr_writer :method_

      # @!attribute [r] request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :request_id

      # @!attribute [r] status
      #   The status of the verification.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status, nil]
      optional :status, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Status }

      # @!parse
      #   # @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      #   attr_writer :status

      # @!parse
      #   # @param id [String]
      #   # @param metadata [PreludeSDK::Models::VerificationCreateResponse::Metadata]
      #   # @param method_ [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      #   # @param request_id [String]
      #   # @param status [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      #   #
      #   def initialize(id: nil, metadata: nil, method_: nil, request_id: nil, status: nil, **) = super

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

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
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

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
