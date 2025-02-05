# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackResponse < PreludeSDK::BaseModel
      Shape = T.type_alias { {id: String} }

      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).void }
      def initialize(id:); end

      sig { returns(PreludeSDK::Models::WatchFeedBackResponse::Shape) }
      def to_h; end
    end
  end
end
