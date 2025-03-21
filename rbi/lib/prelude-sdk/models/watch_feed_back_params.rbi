# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # You should send a feedback event back to Watch API when your user demonstrates
      #   authentic behavior.
      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback) }
      attr_reader :feedback

      sig { params(feedback: T.any(PreludeSDK::Models::WatchFeedBackParams::Feedback, PreludeSDK::Util::AnyHash)).void }
      attr_writer :feedback

      # The verification target. Either a phone number or an email address. To use the
      #   email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target) }
      attr_reader :target

      sig { params(target: T.any(PreludeSDK::Models::WatchFeedBackParams::Target, PreludeSDK::Util::AnyHash)).void }
      attr_writer :target

      sig do
        params(
          feedback: T.any(PreludeSDK::Models::WatchFeedBackParams::Feedback, PreludeSDK::Util::AnyHash),
          target: T.any(PreludeSDK::Models::WatchFeedBackParams::Target, PreludeSDK::Util::AnyHash),
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Util::AnyHash)
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
        attr_accessor :type

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
            T.let(:CONFIRM_TARGET, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[PreludeSDK::Models::WatchFeedBackParams::Feedback::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class Target < PreludeSDK::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target::Type::OrSymbol) }
        attr_accessor :type

        # An E.164 formatted phone number or an email address.
        sig { returns(String) }
        attr_accessor :value

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

          PHONE_NUMBER = T.let(:phone_number, PreludeSDK::Models::WatchFeedBackParams::Target::Type::TaggedSymbol)
          EMAIL_ADDRESS =
            T.let(:email_address, PreludeSDK::Models::WatchFeedBackParams::Target::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[PreludeSDK::Models::WatchFeedBackParams::Target::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
