module Socketlab
  class MessageOpenClickItem
    include Socketlab::Item
    attr_accessor :original_recipient,:event_type
  end
end