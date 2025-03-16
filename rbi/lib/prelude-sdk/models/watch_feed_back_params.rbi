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
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # You should send a feedback event back to Watch API when your user demonstrates
        #   authentic behavior.
        sig { params(type: Symbol).returns(T.attached_class) }
        def self.new(type:)
        end

        sig { override.returns({type: Symbol}) }
        def to_hash
        end

        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   (e.g. phone number) is trustworthy.
        class Type < PreludeSDK::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CONFIRM_TARGET = :CONFIRM_TARGET
        end
      end

      class Target < PreludeSDK::BaseModel
        # The type of the target. Either "phone_number" or "email_address".
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
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
        sig { params(type: Symbol, value: String).returns(T.attached_class) }
        def self.new(type:, value:)
        end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash
        end

        # The type of the target. Either "phone_number" or "email_address".
        class Type < PreludeSDK::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address
        end
      end
    end
  end
end
