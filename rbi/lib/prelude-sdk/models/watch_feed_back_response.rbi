# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackResponse < PreludeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { params(id: String).returns(T.attached_class) }
      def self.new(id:)
      end

      sig { override.returns({id: String}) }
      def to_hash
      end
    end
  end
end
