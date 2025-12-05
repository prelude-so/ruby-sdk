# typed: strong

module PreludeSDK
  module Models
    class NotifyListSubscriptionPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # Pagination cursor from the previous response
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Maximum number of phone numbers to return per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by subscription state
      sig do
        returns(
          T.nilable(
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::OrSymbol
          )
        )
      end
      attr_reader :state

      sig do
        params(
          state:
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::OrSymbol
        ).void
      end
      attr_writer :state

      sig do
        params(
          cursor: String,
          limit: Integer,
          state:
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::OrSymbol,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Pagination cursor from the previous response
        cursor: nil,
        # Maximum number of phone numbers to return per page
        limit: nil,
        # Filter by subscription state
        state: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            limit: Integer,
            state:
              PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::OrSymbol,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by subscription state
      module State
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUB =
          T.let(
            :SUB,
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::TaggedSymbol
          )
        UNSUB =
          T.let(
            :UNSUB,
            PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
