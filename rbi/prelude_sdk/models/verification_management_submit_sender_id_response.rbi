# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementSubmitSenderIDResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The sender ID that was added.
      sig { returns(String) }
      attr_accessor :sender_id

      # It indicates the status of the sender ID. Possible values are:
      #
      # - `approved` - The sender ID is approved.
      # - `pending` - The sender ID is pending.
      # - `rejected` - The sender ID is rejected.
      sig do
        returns(
          PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The reason why the sender ID was rejected.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig do
        params(
          sender_id: String,
          status:
            PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::OrSymbol,
          reason: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The sender ID that was added.
        sender_id:,
        # It indicates the status of the sender ID. Possible values are:
        #
        # - `approved` - The sender ID is approved.
        # - `pending` - The sender ID is pending.
        # - `rejected` - The sender ID is rejected.
        status:,
        # The reason why the sender ID was rejected.
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            sender_id: String,
            status:
              PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol,
            reason: String
          }
        )
      end
      def to_hash
      end

      # It indicates the status of the sender ID. Possible values are:
      #
      # - `approved` - The sender ID is approved.
      # - `pending` - The sender ID is pending.
      # - `rejected` - The sender ID is rejected.
      module Status
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :approved,
            PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
