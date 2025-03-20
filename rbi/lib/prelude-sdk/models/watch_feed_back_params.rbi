# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # You should send a feedback event back to Watch API when your user demonstrates
      #   authentic behavior.
      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback) }
      def feedback
      end

      sig do
        params(_: PreludeSDK::Models::WatchFeedBackParams::Feedback)
          .returns(PreludeSDK::Models::WatchFeedBackParams::Feedback)
      end
      def feedback=(_)
      end

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target) }
      def target
      end

      sig do
        params(_: PreludeSDK::Models::WatchFeedBackParams::Target)
          .returns(PreludeSDK::Models::WatchFeedBackParams::Target)
      end
      def target=(_)
      end

      sig do
        params(
          feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
          target: PreludeSDK::Models::WatchFeedBackParams::Target,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(feedback:, target:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
              target: PreludeSDK::Models::WatchFeedBackParams::Target,
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Feedback < PreludeSDK::BaseModel
        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   (e.g. phone number) is trustworthy.
        sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol) }
        def type
        end

        sig do
          params(_: PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol)
            .returns(PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol)
        end
        def type=(_)
        end

        # You should send a feedback event back to Watch API when your user demonstrates
        #   authentic behavior.
        sig { params(type: PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol).returns(T.attached_class) }
        def self.new(type:)
        end

        sig { override.returns({type: PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol}) }
        def to_hash
        end

        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   (e.g. phone number) is trustworthy.
        module Type
          extend PreludeSDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::TaggedSymbol) }

          CONFIRM_TARGET =
            T.let(:CONFIRM_TARGET, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::OrSymbol)
        end
      end

      class Target < PreludeSDK::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol) }
        def type
        end

        sig do
          params(_: PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol)
            .returns(PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol)
        end
        def type=(_)
        end

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        # The verification target. Either a phone number or an email address. To use the
        #   email verification feature contact us to discuss your use case.
        sig do
          params(type: PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol, value: String)
            .returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig { override.returns({type: PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol, value: String}) }
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        module Type
          extend PreludeSDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type::TaggedSymbol) }

          PHONE_NUMBER = T.let(:phone_number, PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol)
          EMAIL_ADDRESS = T.let(:email_address, PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol)
        end
      end
    end
  end
end
