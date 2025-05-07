# typed: strong

module PreludeSDK
  module Models
    class LookupLookupResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

      # The CNAM (Caller ID Name) associated with the phone number. Contact us if you
      # need to use this functionality. Once enabled, put `cnam` option to `type` query
      # parameter.
      sig { returns(T.nilable(String)) }
      attr_reader :caller_name

      sig { params(caller_name: String).void }
      attr_writer :caller_name

      # The country code of the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # A list of flags associated with the phone number.
      #
      # - `ported` - Indicates the phone number has been transferred from one carrier to
      #   another.
      # - `temporary` - Indicates the phone number is likely a temporary or virtual
      #   number, often used for verification services or burner phones.
      sig do
        returns(
          T.nilable(
            T::Array[
              PreludeSDK::Models::LookupLookupResponse::Flag::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :flags

      sig do
        params(
          flags:
            T::Array[PreludeSDK::Models::LookupLookupResponse::Flag::OrSymbol]
        ).void
      end
      attr_writer :flags

      # The type of phone line.
      #
      # - `calling_cards` - Numbers that are associated with providers of pre-paid
      #   domestic and international calling cards.
      # - `fixed_line` - Landline phone numbers.
      # - `isp` - Numbers reserved for Internet Service Providers.
      # - `local_rate` - Numbers that can be assigned non-geographically.
      # - `mobile` - Mobile phone numbers.
      # - `other` - Other types of services.
      # - `pager` - Number ranges specifically allocated to paging devices.
      # - `payphone` - Allocated numbers for payphone kiosks in some countries.
      # - `premium_rate` - Landline numbers where the calling party pays more than
      #   standard.
      # - `satellite` - Satellite phone numbers.
      # - `service` - Automated applications.
      # - `shared_cost` - Specific landline ranges where the cost of making the call is
      #   shared between the calling and called party.
      # - `short_codes_commercial` - Short codes are memorable, easy-to-use numbers,
      #   like the UK's NHS 111, often sold to businesses. Not available in all
      #   countries.
      # - `toll_free` - Number where the called party pays for the cost of the call not
      #   the calling party.
      # - `universal_access` - Number ranges reserved for Universal Access initiatives.
      # - `unknown` - Unknown phone number type.
      # - `vpn` - Numbers are used exclusively within a private telecommunications
      #   network, connecting the operator's terminals internally and not accessible via
      #   the public telephone network.
      # - `voice_mail` - A specific category of Interactive Voice Response (IVR)
      #   services.
      # - `voip` - Specific ranges for providers of VoIP services to allow incoming
      #   calls from the regular telephony network.
      sig do
        returns(
          T.nilable(
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        )
      end
      attr_reader :line_type

      sig do
        params(
          line_type:
            PreludeSDK::Models::LookupLookupResponse::LineType::OrSymbol
        ).void
      end
      attr_writer :line_type

      # The current carrier information.
      sig do
        returns(
          T.nilable(PreludeSDK::Models::LookupLookupResponse::NetworkInfo)
        )
      end
      attr_reader :network_info

      sig do
        params(
          network_info:
            PreludeSDK::Models::LookupLookupResponse::NetworkInfo::OrHash
        ).void
      end
      attr_writer :network_info

      # The original carrier information.
      sig do
        returns(
          T.nilable(
            PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo
          )
        )
      end
      attr_reader :original_network_info

      sig do
        params(
          original_network_info:
            PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo::OrHash
        ).void
      end
      attr_writer :original_network_info

      # The phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        params(
          caller_name: String,
          country_code: String,
          flags:
            T::Array[PreludeSDK::Models::LookupLookupResponse::Flag::OrSymbol],
          line_type:
            PreludeSDK::Models::LookupLookupResponse::LineType::OrSymbol,
          network_info:
            PreludeSDK::Models::LookupLookupResponse::NetworkInfo::OrHash,
          original_network_info:
            PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo::OrHash,
          phone_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The CNAM (Caller ID Name) associated with the phone number. Contact us if you
        # need to use this functionality. Once enabled, put `cnam` option to `type` query
        # parameter.
        caller_name: nil,
        # The country code of the phone number.
        country_code: nil,
        # A list of flags associated with the phone number.
        #
        # - `ported` - Indicates the phone number has been transferred from one carrier to
        #   another.
        # - `temporary` - Indicates the phone number is likely a temporary or virtual
        #   number, often used for verification services or burner phones.
        flags: nil,
        # The type of phone line.
        #
        # - `calling_cards` - Numbers that are associated with providers of pre-paid
        #   domestic and international calling cards.
        # - `fixed_line` - Landline phone numbers.
        # - `isp` - Numbers reserved for Internet Service Providers.
        # - `local_rate` - Numbers that can be assigned non-geographically.
        # - `mobile` - Mobile phone numbers.
        # - `other` - Other types of services.
        # - `pager` - Number ranges specifically allocated to paging devices.
        # - `payphone` - Allocated numbers for payphone kiosks in some countries.
        # - `premium_rate` - Landline numbers where the calling party pays more than
        #   standard.
        # - `satellite` - Satellite phone numbers.
        # - `service` - Automated applications.
        # - `shared_cost` - Specific landline ranges where the cost of making the call is
        #   shared between the calling and called party.
        # - `short_codes_commercial` - Short codes are memorable, easy-to-use numbers,
        #   like the UK's NHS 111, often sold to businesses. Not available in all
        #   countries.
        # - `toll_free` - Number where the called party pays for the cost of the call not
        #   the calling party.
        # - `universal_access` - Number ranges reserved for Universal Access initiatives.
        # - `unknown` - Unknown phone number type.
        # - `vpn` - Numbers are used exclusively within a private telecommunications
        #   network, connecting the operator's terminals internally and not accessible via
        #   the public telephone network.
        # - `voice_mail` - A specific category of Interactive Voice Response (IVR)
        #   services.
        # - `voip` - Specific ranges for providers of VoIP services to allow incoming
        #   calls from the regular telephony network.
        line_type: nil,
        # The current carrier information.
        network_info: nil,
        # The original carrier information.
        original_network_info: nil,
        # The phone number.
        phone_number: nil
      )
      end

      sig do
        override.returns(
          {
            caller_name: String,
            country_code: String,
            flags:
              T::Array[
                PreludeSDK::Models::LookupLookupResponse::Flag::TaggedSymbol
              ],
            line_type:
              PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol,
            network_info: PreludeSDK::Models::LookupLookupResponse::NetworkInfo,
            original_network_info:
              PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo,
            phone_number: String
          }
        )
      end
      def to_hash
      end

      module Flag
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::LookupLookupResponse::Flag)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PORTED =
          T.let(
            :ported,
            PreludeSDK::Models::LookupLookupResponse::Flag::TaggedSymbol
          )
        TEMPORARY =
          T.let(
            :temporary,
            PreludeSDK::Models::LookupLookupResponse::Flag::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::LookupLookupResponse::Flag::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of phone line.
      #
      # - `calling_cards` - Numbers that are associated with providers of pre-paid
      #   domestic and international calling cards.
      # - `fixed_line` - Landline phone numbers.
      # - `isp` - Numbers reserved for Internet Service Providers.
      # - `local_rate` - Numbers that can be assigned non-geographically.
      # - `mobile` - Mobile phone numbers.
      # - `other` - Other types of services.
      # - `pager` - Number ranges specifically allocated to paging devices.
      # - `payphone` - Allocated numbers for payphone kiosks in some countries.
      # - `premium_rate` - Landline numbers where the calling party pays more than
      #   standard.
      # - `satellite` - Satellite phone numbers.
      # - `service` - Automated applications.
      # - `shared_cost` - Specific landline ranges where the cost of making the call is
      #   shared between the calling and called party.
      # - `short_codes_commercial` - Short codes are memorable, easy-to-use numbers,
      #   like the UK's NHS 111, often sold to businesses. Not available in all
      #   countries.
      # - `toll_free` - Number where the called party pays for the cost of the call not
      #   the calling party.
      # - `universal_access` - Number ranges reserved for Universal Access initiatives.
      # - `unknown` - Unknown phone number type.
      # - `vpn` - Numbers are used exclusively within a private telecommunications
      #   network, connecting the operator's terminals internally and not accessible via
      #   the public telephone network.
      # - `voice_mail` - A specific category of Interactive Voice Response (IVR)
      #   services.
      # - `voip` - Specific ranges for providers of VoIP services to allow incoming
      #   calls from the regular telephony network.
      module LineType
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::LookupLookupResponse::LineType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALLING_CARDS =
          T.let(
            :calling_cards,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        FIXED_LINE =
          T.let(
            :fixed_line,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        ISP =
          T.let(
            :isp,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        LOCAL_RATE =
          T.let(
            :local_rate,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        PAGER =
          T.let(
            :pager,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        PAYPHONE =
          T.let(
            :payphone,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        PREMIUM_RATE =
          T.let(
            :premium_rate,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        SATELLITE =
          T.let(
            :satellite,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        SERVICE =
          T.let(
            :service,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        SHORT_CODES_COMMERCIAL =
          T.let(
            :short_codes_commercial,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        UNIVERSAL_ACCESS =
          T.let(
            :universal_access,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :unknown,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        VPN =
          T.let(
            :vpn,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        VOICE_MAIL =
          T.let(
            :voice_mail,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )
        VOIP =
          T.let(
            :voip,
            PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::LookupLookupResponse::LineType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class NetworkInfo < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

        # The name of the carrier.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier_name

        sig { params(carrier_name: String).void }
        attr_writer :carrier_name

        # Mobile Country Code.
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Mobile Network Code.
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # The current carrier information.
        sig do
          params(carrier_name: String, mcc: String, mnc: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The name of the carrier.
          carrier_name: nil,
          # Mobile Country Code.
          mcc: nil,
          # Mobile Network Code.
          mnc: nil
        )
        end

        sig do
          override.returns({ carrier_name: String, mcc: String, mnc: String })
        end
        def to_hash
        end
      end

      class OriginalNetworkInfo < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

        # The name of the original carrier.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier_name

        sig { params(carrier_name: String).void }
        attr_writer :carrier_name

        # Mobile Country Code.
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Mobile Network Code.
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # The original carrier information.
        sig do
          params(carrier_name: String, mcc: String, mnc: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The name of the original carrier.
          carrier_name: nil,
          # Mobile Country Code.
          mcc: nil,
          # Mobile Network Code.
          mnc: nil
        )
        end

        sig do
          override.returns({ carrier_name: String, mcc: String, mnc: String })
        end
        def to_hash
        end
      end
    end
  end
end
