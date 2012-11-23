module Socketlab
  class MessageQueuedItem
    include Socketlab::Item
    attr_accessor :message_size,:failure_code,:reason
  end
end