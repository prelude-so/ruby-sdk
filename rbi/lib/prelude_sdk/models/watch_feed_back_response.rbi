# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackResponse < PreludeSDK::Internal::Type::BaseModel
      # A unique identifier for your feedback request.
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(id:); end

      sig { override.returns({id: String}) }
      def to_hash; end
    end
  end
end
