# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementListSenderIDsResponseItem < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem,
            PreludeSDK::Internal::AnyHash
          )
        end

      # It indicates the status of the sender ID. Possible values are:
      #
      # - `approved` - The sender ID is approved.
      # - `pending` - The sender ID is pending.
      # - `rejected` - The sender ID is rejected.
      sig do
        returns(
          T.nilable(
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Value that will be presented as Sender ID
      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      sig do
        params(
          status:
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # It indicates the status of the sender ID. Possible values are:
        #
        # - `approved` - The sender ID is approved.
        # - `pending` - The sender ID is pending.
        # - `rejected` - The sender ID is rejected.
        status: nil,
        # Value that will be presented as Sender ID
        value: nil
      )
      end

      sig do
        override.returns(
          {
            status:
              PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol,
            value: String
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
              PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :approved,
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end

    VerificationManagementListSenderIDsResponse =
      T.let(
        PreludeSDK::Internal::Type::ArrayOf[
          PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem
        ],
        PreludeSDK::Internal::Type::Converter
      )
  end
end
