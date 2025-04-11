# typed: strong

module PreludeSDK
  module Resources
    class Lookup
      # Retrieve detailed information about a phone number including carrier data, line
      # type, and portability status.
      sig do
        params(
          phone_number: String,
          type: T::Array[PreludeSDK::Models::LookupLookupParams::Type::OrSymbol],
          request_options: T.nilable(T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash))
        )
          .returns(PreludeSDK::Models::LookupLookupResponse)
      end
      def lookup(
        # An E.164 formatted phone number to look up.
        phone_number,
        # Optional features. Possible values are:
        #
        # - `cnam` - Retrieve CNAM (Caller ID Name) along with other information. Contact
        #   us if you need to use this functionality.
        type: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
