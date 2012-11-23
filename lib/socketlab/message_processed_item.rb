module Socketlab
  class MessageProcessedItem
    include Socketlab::Item
    attr_accessor :disposition,:local_ip,:message_size,:response
  end
end