# typed: strong

module PreludeSDK
  module Models
    class NotifyListSubscriptionConfigsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::NotifyListSubscriptionConfigsParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # Pagination cursor from the previous response
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Maximum number of configurations to return per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Pagination cursor from the previous response
        cursor: nil,
        # Maximum number of configurations to return per page
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            limit: Integer,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
