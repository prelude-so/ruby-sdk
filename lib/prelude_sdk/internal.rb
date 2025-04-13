# frozen_string_literal: true

module PreludeSDK
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{PreludeSDK::Internal}::OMIT>" }
      end
        .freeze
  end
end
