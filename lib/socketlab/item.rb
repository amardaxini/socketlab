module Socketlab
  module Item

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      attr_accessor :server_id,:date_time,:message_id,:mailing_id,:to_address,:from_address
    end

    def set_item(item_hash)
      item_hash.each do |attr_key,attr_val|
        item_attr = "@#{attr_key.snake_case}".to_sym
        self.instance_variable_set(item_attr,attr_val)
      end
    end

  end
end