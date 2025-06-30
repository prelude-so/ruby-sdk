# typed: strong

module PreludeSDK
  module Models
    class WatchSendEventsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::WatchSendEventsParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of events to dispatch.
      sig { returns(T::Array[PreludeSDK::WatchSendEventsParams::Event]) }
      attr_accessor :events

      sig do
        params(
          events: T::Array[PreludeSDK::WatchSendEventsParams::Event::OrHash],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of events to dispatch.
        events:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            events: T::Array[PreludeSDK::WatchSendEventsParams::Event],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Event < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::WatchSendEventsParams::Event,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A confidence level you want to assign to the event.
        sig do
          returns(
            PreludeSDK::WatchSendEventsParams::Event::Confidence::OrSymbol
          )
        end
        attr_accessor :confidence

        # A label to describe what the event refers to.
        sig { returns(String) }
        attr_accessor :label

        # The event target. Only supports phone numbers for now.
        sig { returns(PreludeSDK::WatchSendEventsParams::Event::Target) }
        attr_reader :target

        sig do
          params(
            target: PreludeSDK::WatchSendEventsParams::Event::Target::OrHash
          ).void
        end
        attr_writer :target

        sig do
          params(
            confidence:
              PreludeSDK::WatchSendEventsParams::Event::Confidence::OrSymbol,
            label: String,
            target: PreludeSDK::WatchSendEventsParams::Event::Target::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A confidence level you want to assign to the event.
          confidence:,
          # A label to describe what the event refers to.
          label:,
          # The event target. Only supports phone numbers for now.
          target:
        )
        end

        sig do
          override.returns(
            {
              confidence:
                PreludeSDK::WatchSendEventsParams::Event::Confidence::OrSymbol,
              label: String,
              target: PreludeSDK::WatchSendEventsParams::Event::Target
            }
          )
        end
        def to_hash
        end

        # A confidence level you want to assign to the event.
        module Confidence
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::WatchSendEventsParams::Event::Confidence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MAXIMUM =
            T.let(
              :maximum,
              PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
            )
          NEUTRAL =
            T.let(
              :neutral,
              PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
            )
          LOW =
            T.let(
              :low,
              PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
            )
          MINIMUM =
            T.let(
              :minimum,
              PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::WatchSendEventsParams::Event::Confidence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Target < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::WatchSendEventsParams::Event::Target,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The type of the target. Either "phone_number" or "email_address".
          sig do
            returns(
              PreludeSDK::WatchSendEventsParams::Event::Target::Type::OrSymbol
            )
          end
          attr_accessor :type

          # An E.164 formatted phone number or an email address.
          sig { returns(String) }
          attr_accessor :value

          # The event target. Only supports phone numbers for now.
          sig do
            params(
              type:
                PreludeSDK::WatchSendEventsParams::Event::Target::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of the target. Either "phone_number" or "email_address".
            type:,
            # An E.164 formatted phone number or an email address.
            value:
          )
          end

          sig do
            override.returns(
              {
                type:
                  PreludeSDK::WatchSendEventsParams::Event::Target::Type::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # The type of the target. Either "phone_number" or "email_address".
          module Type
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::WatchSendEventsParams::Event::Target::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PHONE_NUMBER =
              T.let(
                :phone_number,
                PreludeSDK::WatchSendEventsParams::Event::Target::Type::TaggedSymbol
              )
            EMAIL_ADDRESS =
              T.let(
                :email_address,
                PreludeSDK::WatchSendEventsParams::Event::Target::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::WatchSendEventsParams::Event::Target::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
