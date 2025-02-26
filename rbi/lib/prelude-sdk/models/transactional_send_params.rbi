# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(String) }
      def template_id
      end

      sig { params(_: String).returns(String) }
      def template_id=(_)
      end

      sig { returns(String) }
      def to
      end

      sig { params(_: String).returns(String) }
      def to=(_)
      end

      sig { returns(T.nilable(String)) }
      def callback_url
      end

      sig { params(_: String).returns(String) }
      def callback_url=(_)
      end

      sig { returns(T.nilable(String)) }
      def correlation_id
      end

      sig { params(_: String).returns(String) }
      def correlation_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def expires_at
      end

      sig { params(_: String).returns(String) }
      def expires_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def from
      end

      sig { params(_: String).returns(String) }
      def from=(_)
      end

      sig { returns(T.nilable(String)) }
      def locale
      end

      sig { params(_: String).returns(String) }
      def locale=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def variables
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def variables=(_)
      end

      sig do
        params(
          template_id: String,
          to: String,
          callback_url: String,
          correlation_id: String,
          expires_at: String,
          from: String,
          locale: String,
          variables: T::Hash[Symbol, String],
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        template_id:,
        to:,
        callback_url: nil,
        correlation_id: nil,
        expires_at: nil,
        from: nil,
        locale: nil,
        variables: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              template_id: String,
              to: String,
              callback_url: String,
              correlation_id: String,
              expires_at: String,
              from: String,
              locale: String,
              variables: T::Hash[Symbol, String],
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
