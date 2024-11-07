# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "json"
require "net/http"
require "securerandom"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "prelude/base_client"
require_relative "prelude/base_model"
require_relative "prelude/request_options"
require_relative "prelude/pooled_net_requester"
require_relative "prelude/util"
require_relative "prelude/version"
require_relative "prelude/models/verification_create_response"
require_relative "prelude/models/verification_check_response"
require_relative "prelude/models/transactional_send_response"
require_relative "prelude/resources/verification"
require_relative "prelude/resources/transactional"
require_relative "prelude/client"
