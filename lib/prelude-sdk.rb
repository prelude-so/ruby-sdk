# frozen_string_literal: true

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$0]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "prelude-sdk" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "prelude-sdk/version"
require_relative "prelude-sdk/util"
require_relative "prelude-sdk/base_model"
require_relative "prelude-sdk/base_page"
require_relative "prelude-sdk/request_options"
require_relative "prelude-sdk/errors"
require_relative "prelude-sdk/base_client"
require_relative "prelude-sdk/pooled_net_requester"
require_relative "prelude-sdk/client"
require_relative "prelude-sdk/models/transactional_send_params"
require_relative "prelude-sdk/models/transactional_send_response"
require_relative "prelude-sdk/models/verification_check_params"
require_relative "prelude-sdk/models/verification_check_response"
require_relative "prelude-sdk/models/verification_create_params"
require_relative "prelude-sdk/models/verification_create_response"
require_relative "prelude-sdk/models/watch_feed_back_params"
require_relative "prelude-sdk/models/watch_feed_back_response"
require_relative "prelude-sdk/models/watch_predict_params"
require_relative "prelude-sdk/models/watch_predict_response"
require_relative "prelude-sdk/resources/transactional"
require_relative "prelude-sdk/resources/verification"
require_relative "prelude-sdk/resources/watch"
