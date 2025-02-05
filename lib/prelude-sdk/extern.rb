# frozen_string_literal: true

module PreludeSDK
  # @private
  #
  # @abstract
  #
  module Extern
    # @private
    #
    # @param blk [Proc]
    #
    def sorbet!(&blk); end
  end
end
