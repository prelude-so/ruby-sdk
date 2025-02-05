# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendResponse < PreludeSDK::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Time) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :template_id

      sig { returns(String) }
      attr_accessor :to

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :variables

      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

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
        ).void
      end
      def initialize(
        id:,
        created_at:,
        expires_at:,
        template_id:,
        to:,
        variables:,
        callback_url: nil,
        correlation_id: nil,
        from: nil
      ); end

      sig { returns(PreludeSDK::Models::TransactionalSendResponse::Shape) }
      def to_h; end
    end
  end
end
