# frozen_string_literal: true

# Standard libraries.
require "English"
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

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$PROGRAM_NAME]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "prelude_sdk" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "prelude_sdk/version"
require_relative "prelude_sdk/internal/util"
require_relative "prelude_sdk/internal/type/converter"
require_relative "prelude_sdk/internal/type/unknown"
require_relative "prelude_sdk/internal/type/boolean"
require_relative "prelude_sdk/internal/type/io_like"
require_relative "prelude_sdk/internal/type/enum"
require_relative "prelude_sdk/internal/type/union"
require_relative "prelude_sdk/internal/type/array_of"
require_relative "prelude_sdk/internal/type/hash_of"
require_relative "prelude_sdk/internal/type/base_model"
require_relative "prelude_sdk/internal/type/base_page"
require_relative "prelude_sdk/internal/type/request_parameters"
require_relative "prelude_sdk/internal"
require_relative "prelude_sdk/request_options"
require_relative "prelude_sdk/errors"
require_relative "prelude_sdk/internal/transport/base_client"
require_relative "prelude_sdk/internal/transport/pooled_net_requester"
require_relative "prelude_sdk/client"
require_relative "prelude_sdk/models/transactional_send_params"
require_relative "prelude_sdk/models/transactional_send_response"
require_relative "prelude_sdk/models/verification_check_params"
require_relative "prelude_sdk/models/verification_check_response"
require_relative "prelude_sdk/models/verification_create_params"
require_relative "prelude_sdk/models/verification_create_response"
require_relative "prelude_sdk/models/watch_feed_back_params"
require_relative "prelude_sdk/models/watch_feed_back_response"
require_relative "prelude_sdk/models/watch_predict_params"
require_relative "prelude_sdk/models/watch_predict_response"
require_relative "prelude_sdk/resources/transactional"
require_relative "prelude_sdk/resources/verification"
require_relative "prelude_sdk/resources/watch"
