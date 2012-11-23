module Socketlab
  class MessageFailedItem
    include Socketlab::Item
    attr_accessor :failure_type,:failure_code,:reason
  end
end