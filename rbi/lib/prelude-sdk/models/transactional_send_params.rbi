# typed: strong

module PreludeSDK
  module Models
    class TransactionalSendParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            template_id: String,
            to: String,
            callback_url: String,
            correlation_id: String,
            expires_at: String,
            from: String,
            locale: String,
            variables: T::Hash[Symbol, String]
          },
          PreludeSDK::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :template_id

      sig { returns(String) }
      attr_accessor :to

      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { params(expires_at: String).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :variables

      sig { params(variables: T::Hash[Symbol, String]).void }
      attr_writer :variables

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
          request_options: PreludeSDK::RequestOpts
        ).void
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
      ); end

      sig { returns(PreludeSDK::Models::TransactionalSendParams::Shape) }
      def to_h; end
    end
  end
end
