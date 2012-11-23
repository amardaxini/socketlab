require "socketlab/version"
require "socketlab/socketklab_request"
require "socketlab/item"
require "socketlab/account_data"
require "socketlab/message_failed"
require "socketlab/message_failed_item"
require "socketlab/message_processed"
require "socketlab/message_processed_item"
require "socketlab/fbl_report"
require "socketlab/fbl_report_item"
require "socketlab/message_open_click"
require "socketlab/message_open_click_item"
require "socketlab/utility"

require 'httparty'
module Socketlab
  BASE_URI = "api.socketlabs.com"

  class << self
    def api_user=(v); @api_user = v; end
    def api_user; @api_user; end

    def api_password=(v); @api_password = v; end
    def api_password; @api_password; end

    def api_version=(v); @api_version = v; end
    def api_version; @api_version; end

  end
end
