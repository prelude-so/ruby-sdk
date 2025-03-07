# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Time) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

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

      sig { returns(T::Hash[Symbol, String]) }
      def variables
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def variables=(_)
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
      def from
      end

      sig { params(_: String).returns(String) }
      def from=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          expires_at: Time,
          template_id: String,
          to: String,
          variables: T::Hash[Symbol, String],
          callback_url: String,
          correlation_id: String,
          from: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        expires_at:,
        template_id:,
        to:,
        variables:,
        callback_url: nil,
        correlation_id: nil,
        from: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              expires_at: Time,
              template_id: String,
              to: String,
              variables: T::Hash[Symbol, String],
              callback_url: String,
              correlation_id: String,
              from: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
