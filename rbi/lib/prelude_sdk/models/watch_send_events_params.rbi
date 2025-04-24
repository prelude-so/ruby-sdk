# typed: strong

module PreludeSDK
  module Models
    class WatchSendEventsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # A list of events to dispatch.
      sig { returns(T::Array[PreludeSDK::Models::WatchSendEventsParams::Event]) }
      attr_accessor :events

      sig do
        params(
          events: T::Array[T.any(PreludeSDK::Models::WatchSendEventsParams::Event, PreludeSDK::Internal::AnyHash)],
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A list of events to dispatch.
        events:,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              events: T::Array[PreludeSDK::Models::WatchSendEventsParams::Event],
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash; end

      class Event < PreludeSDK::Internal::Type::BaseModel
        # A confidence level you want to assign to the event.
        sig { returns(PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::OrSymbol) }
        attr_accessor :confidence

        # A label to describe what the event refers to.
        sig { returns(String) }
        attr_accessor :label

        # The event target. Only supports phone numbers for now.
        sig { returns(PreludeSDK::Models::WatchSendEventsParams::Event::Target) }
        attr_reader :target

        sig do
          params(
            target: T.any(PreludeSDK::Models::WatchSendEventsParams::Event::Target, PreludeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :target

        sig do
          params(
            confidence: PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::OrSymbol,
            label: String,
            target: T.any(PreludeSDK::Models::WatchSendEventsParams::Event::Target, PreludeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A confidence level you want to assign to the event.
          confidence:,
          # A label to describe what the event refers to.
          label:,
          # The event target. Only supports phone numbers for now.
          target:
        ); end
        sig do
          override
            .returns(
              {
                confidence: PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::OrSymbol,
                label: String,
                target: PreludeSDK::Models::WatchSendEventsParams::Event::Target
              }
            )
        end
        def to_hash; end

        # A confidence level you want to assign to the event.
        module Confidence
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MAXIMUM = T.let(:maximum, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol)
          HIGH = T.let(:high, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol)
          NEUTRAL = T.let(:neutral, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol)
          LOW = T.let(:low, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol)
          MINIMUM = T.let(:minimum, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol)

          sig { override.returns(T::Array[PreludeSDK::Models::WatchSendEventsParams::Event::Confidence::TaggedSymbol]) }
          def self.values; end
        end

        class Target < PreludeSDK::Internal::Type::BaseModel
          # The type of the target. Either "phone_number" or "email_address".
          sig { returns(PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::OrSymbol) }
          attr_accessor :type

          # An E.164 formatted phone number or an email address.
          sig { returns(String) }
          attr_accessor :value

          # The event target. Only supports phone numbers for now.
          sig do
            params(type: PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::OrSymbol, value: String)
              .returns(T.attached_class)
          end
          def self.new(
            # The type of the target. Either "phone_number" or "email_address".
            type:,
            # An E.164 formatted phone number or an email address.
            value:
          ); end
          sig do
            override
              .returns({type: PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::OrSymbol, value: String})
          end
          def to_hash; end

          # The type of the target. Either "phone_number" or "email_address".
          module Type
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PHONE_NUMBER =
              T.let(:phone_number, PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::TaggedSymbol)
            EMAIL_ADDRESS =
              T.let(:email_address, PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::TaggedSymbol)

            sig { override.returns(T::Array[PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type::TaggedSymbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
