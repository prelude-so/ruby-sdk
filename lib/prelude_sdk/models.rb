# frozen_string_literal: true

module PreludeSDK
  [PreludeSDK::Internal::Type::BaseModel, *PreludeSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, PreludeSDK::Internal::AnyHash) } }
  end

  [
    *PreludeSDK::Internal::Type::Enum.included_modules,
    *PreludeSDK::Internal::Type::Union.included_modules
  ].each do |cls|
    cls.constants.each do |name|
      case cls.const_get(name)
      in true | false
        cls.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, cls) } }
        cls.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
      in Integer
        cls.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, cls) } }
        cls.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
      in Float
        cls.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, cls) } }
        cls.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
      in Symbol
        cls.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, cls) } }
        cls.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
      else
      end
    end
  end

  LookupLookupParams = PreludeSDK::Models::LookupLookupParams

  TransactionalSendParams = PreludeSDK::Models::TransactionalSendParams

  VerificationCheckParams = PreludeSDK::Models::VerificationCheckParams

  VerificationCreateParams = PreludeSDK::Models::VerificationCreateParams

  WatchPredictParams = PreludeSDK::Models::WatchPredictParams

  WatchSendEventsParams = PreludeSDK::Models::WatchSendEventsParams

  WatchSendFeedbacksParams = PreludeSDK::Models::WatchSendFeedbacksParams
end
