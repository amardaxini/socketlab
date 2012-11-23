module Socketlab
  class SocketlabRequest
    attr_accessor :api_user,:api_password,:api_server,:api_version,:query_params,:error

    def initialize(api_user = nil, api_key = nil,api_server=nil,api_version=nil)
      @api_user = api_user || Socketlab.api_user
      @api_password = api_password || Socketlab.api_password
      @api_version = api_version || Socketlab.api_version || "v1"

    end

    def socketlab_request(module_name)
      @api_response =HTTParty.get("https://#{BASE_URI}/#{@api_version}/#{module_name}", set_request_options)
    end

    #default response type is json
    def set_query_params_type
      @query_params[:type]= @query_params[:type] || "json"
    end

    def set_request_options
      set_query_params_type
      options= {}
      options[:query] = @query_params
      options[:basic_auth] = {:username => @api_user, :password => @api_password}
      options
    end

    #  Assuming type is json
    def set_response(item_class_name)
      if @api_response.success?
        @total_count = @api_response["totalCount"]
        @total_pages = @api_response["totalPages"]
        @count = @api_response["count"]
        @timestamp = @api_response["timestamp"]
        @items = []
        unless @api_response["collection"].nil?
          @api_response["collection"].each do |attr_item|
            item = item_class_name.new
            item.set_item(attr_item)
            @items << item
          end
        end
      else
        @error = @api_response.parsed_response
      end
    end

    def error?
      @api_response.success?
    end

  end
end