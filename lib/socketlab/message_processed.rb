module Socketlab
  class MessageProcessed < SocketlabRequest

    #JSON, JSONP, XML or CSV
    #date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    #query=  {:serverId=>"",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    def api_request(query={:type=>"JSON"})
      @query_params = query
      socketlab_request("messagesProcessed")

    end

    #  Assuming type is json
    def set_response
      super(MessageProcessedItem)
    end


  end
end