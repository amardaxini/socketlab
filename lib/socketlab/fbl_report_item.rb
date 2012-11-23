module Socketlab
  class FblReportItem
    include Socketlab::Item
    attr_accessor :original_recipient,:type,:user_agent
  end
end