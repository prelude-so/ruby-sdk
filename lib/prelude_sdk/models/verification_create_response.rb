# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#create
    class VerificationCreateResponse < PreludeSDK::Internal::Type::BaseModel
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

      # @!attribute channels
      #   The ordered sequence of channels to be used for verification
      #
      #   @return [Array<String>, nil]
      optional :channels, PreludeSDK::Internal::Type::ArrayOf[String]

      # @!attribute metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!method initialize(id:, method_:, status:, channels: nil, metadata: nil, request_id: nil)
      #   @param id [String] The verification identifier.
      #
      #   @param method_ [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method] The method used for verifying this phone number.
      #
      #   @param status [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status] The status of the verification.
      #
      #   @param channels [Array<String>] The ordered sequence of channels to be used for verification
      #
      #   @param metadata [PreludeSDK::Models::VerificationCreateResponse::Metadata] The metadata for this verification.
      #
      #   @param request_id [String]

      # The method used for verifying this phone number.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#method_
      module Method
        extend PreludeSDK::Internal::Type::Enum

        MESSAGE = :message

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the verification.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see PreludeSDK::Models::VerificationCreateResponse#metadata
      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   The metadata for this verification.
        #
        #   @param correlation_id [String]
      end
    end
  end
end
