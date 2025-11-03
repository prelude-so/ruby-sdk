# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
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
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
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
require_relative "prelude_sdk/internal/type/file_input"
require_relative "prelude_sdk/internal/type/enum"
require_relative "prelude_sdk/internal/type/union"
require_relative "prelude_sdk/internal/type/array_of"
require_relative "prelude_sdk/internal/type/hash_of"
require_relative "prelude_sdk/internal/type/base_model"
require_relative "prelude_sdk/internal/type/base_page"
require_relative "prelude_sdk/internal/type/request_parameters"
require_relative "prelude_sdk/internal"
require_relative "prelude_sdk/request_options"
require_relative "prelude_sdk/file_part"
require_relative "prelude_sdk/errors"
require_relative "prelude_sdk/internal/transport/base_client"
require_relative "prelude_sdk/internal/transport/pooled_net_requester"
require_relative "prelude_sdk/client"
require_relative "prelude_sdk/models/lookup_lookup_params"
require_relative "prelude_sdk/models/lookup_lookup_response"
require_relative "prelude_sdk/models/transactional_send_params"
require_relative "prelude_sdk/models/transactional_send_response"
require_relative "prelude_sdk/models/verification_check_params"
require_relative "prelude_sdk/models/verification_check_response"
require_relative "prelude_sdk/models/verification_create_params"
require_relative "prelude_sdk/models/verification_create_response"
require_relative "prelude_sdk/models/verification_management_delete_phone_number_params"
require_relative "prelude_sdk/models/verification_management_delete_phone_number_response"
require_relative "prelude_sdk/models/verification_management_list_phone_numbers_params"
require_relative "prelude_sdk/models/verification_management_list_phone_numbers_response"
require_relative "prelude_sdk/models/verification_management_list_sender_ids_params"
require_relative "prelude_sdk/models/verification_management_list_sender_ids_response"
require_relative "prelude_sdk/models/verification_management_set_phone_number_params"
require_relative "prelude_sdk/models/verification_management_set_phone_number_response"
require_relative "prelude_sdk/models/verification_management_submit_sender_id_params"
require_relative "prelude_sdk/models/verification_management_submit_sender_id_response"
require_relative "prelude_sdk/models/watch_predict_params"
require_relative "prelude_sdk/models/watch_predict_response"
require_relative "prelude_sdk/models/watch_send_events_params"
require_relative "prelude_sdk/models/watch_send_events_response"
require_relative "prelude_sdk/models/watch_send_feedbacks_params"
require_relative "prelude_sdk/models/watch_send_feedbacks_response"
require_relative "prelude_sdk/models"
require_relative "prelude_sdk/resources/lookup"
require_relative "prelude_sdk/resources/transactional"
require_relative "prelude_sdk/resources/verification"
require_relative "prelude_sdk/resources/verification_management"
require_relative "prelude_sdk/resources/watch"
