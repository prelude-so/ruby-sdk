# frozen_string_literal: true

module PreludeSDK
  [PreludeSDK::Internal::Type::BaseModel, *PreludeSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, PreludeSDK::Internal::AnyHash) } }
  end

  PreludeSDK::Internal::Util.walk_namespaces(PreludeSDK::Models).each do |mod|
    case mod
    in PreludeSDK::Internal::Type::Enum | PreludeSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  PreludeSDK::Internal::Util.walk_namespaces(PreludeSDK::Models)
                            .lazy
                            .grep(PreludeSDK::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Intel = PreludeSDK::Models::Intel

  LookupLookupParams = PreludeSDK::Models::LookupLookupParams

  NotifyGetSubscriptionConfigParams = PreludeSDK::Models::NotifyGetSubscriptionConfigParams

  NotifyGetSubscriptionPhoneNumberParams = PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberParams

  NotifyListSubscriptionConfigsParams = PreludeSDK::Models::NotifyListSubscriptionConfigsParams

  NotifyListSubscriptionPhoneNumberEventsParams =
    PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsParams

  NotifyListSubscriptionPhoneNumbersParams = PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersParams

  NotifyReplyParams = PreludeSDK::Models::NotifyReplyParams

  NotifySendBatchParams = PreludeSDK::Models::NotifySendBatchParams

  NotifySendParams = PreludeSDK::Models::NotifySendParams

  Signals = PreludeSDK::Models::Signals

  Target = PreludeSDK::Models::Target

  TransactionalSendParams = PreludeSDK::Models::TransactionalSendParams

  Verification = PreludeSDK::Models::Verification

  VerificationCheckParams = PreludeSDK::Models::VerificationCheckParams

  VerificationCreateParams = PreludeSDK::Models::VerificationCreateParams

  VerificationManagement = PreludeSDK::Models::VerificationManagement

  VerificationManagementDeletePhoneNumberParams =
    PreludeSDK::Models::VerificationManagementDeletePhoneNumberParams

  VerificationManagementListPhoneNumbersParams =
    PreludeSDK::Models::VerificationManagementListPhoneNumbersParams

  VerificationManagementListSenderIDsParams = PreludeSDK::Models::VerificationManagementListSenderIDsParams

  VerificationManagementSetPhoneNumberParams =
    PreludeSDK::Models::VerificationManagementSetPhoneNumberParams

  VerificationManagementSubmitSenderIDParams =
    PreludeSDK::Models::VerificationManagementSubmitSenderIDParams

  WatchEvaluateParams = PreludeSDK::Models::WatchEvaluateParams

  WatchPredictParams = PreludeSDK::Models::WatchPredictParams

  WatchSendEventsParams = PreludeSDK::Models::WatchSendEventsParams

  WatchSendFeedbacksParams = PreludeSDK::Models::WatchSendFeedbacksParams
end
