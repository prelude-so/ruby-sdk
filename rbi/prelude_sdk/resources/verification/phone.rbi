# typed: strong

module PreludeSDK
  module Resources
    class Verification
      class Phone
        # Verify phone numbers.
        sig { returns(PreludeSDK::Resources::Verification::Phone::History) }
        attr_reader :history

        # @api private
        sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
