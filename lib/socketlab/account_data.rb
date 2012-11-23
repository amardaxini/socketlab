module Socketlab
  class AccountData < SocketlabRequest

    attr_accessor :timestamp

    #JSON, JSONP, XML or CSV
    #query {:serverId=>"",:type=>"JSON"}
    def api_request(query={:type=>"JSON"})
      @query_params =query
      socketlab_request("accountData")

    end

    #  Assuming type is json
    #  Setting Instance variable Dynamicaly and adding attr_accessor
    #  :server_id, :account_id, :plan_billing_period_start,:plan_billing_period_end,:billing_period_start,:billing_period_end,
    # :billing_period_message_count,:billing_period_bandwidth_count_in_bytes,:billing_period_bandwidth_count_in_gigabytes,
    # :billing_period_api_count,:api_allowance,:max_api_allowance,:message_allowance,:max_message_allowance,
    # :bandwidth_allowance_in_bytes,:max_bandwidth_allowance_in_bytes,:bandwidth_allowance_in_gigabytes,
    # :max_bandwidth_allowance_in_gigabytes,:is_over_api_allowance,:is_over_bandwidth_allowance,:is_over_message_allowance

    def set_response
      if @api_response.success?
        @timestamp = @api_response["timestamp"]
        unless @api_response["object"].nil?
          @api_response["object"].each do |attr_key,attr_val|
            self.class.send :attr_accessor ,attr_key.snake_case.to_sym
            self.instance_variable_set("@#{attr_key.snake_case}".to_sym,attr_val)
          end
        end
      else
        @error = @api_response.parsed_response
      end
    end

  end
end