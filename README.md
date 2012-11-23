# Socketlab

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'socketlab'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install socketlab

## Usage

### Set Socketlab Api User and Password

    Socketlab.api_user=''
    Socketlab.api_password=''


### Get Account Data
    # https://api.socketlabs.com/v1/accountData
    account_data = Socketlab::AccountData.new
    account_data.api_request({:serverId=>''})
    account_data.set_response

account object returns Current Billing Period Start,Current BillingPeriod End... etc attributes refer api

###  Messages Failed

    
    # https://api.socketlabs.com/v1/messagesFailed
    # date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    # query=  {:serverId=>"required",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    message = Socketlab::MessageFailed.new
    message.api_request(query)
    message.set_response

###  Messages Queued

    
    # https://api.socketlabs.com/v1/messagesQueued
    # date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    # query=  {:serverId=>"required",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    message = Socketlab::MessageQueued.new
    message.api_request(query)
    message.set_response

###  Messages Processed 
    
    # https://api.socketlabs.com/v1/messagesProcessed
    # date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    # query=  {:serverId=>"",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    message = Socketlab::MessageProcessed.new 
    message.api_request(query)
    message.set_response

###  Messages Fbl Reported
    
    # https://api.socketlabs.com/v1/messagesFblReported
    # date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    # query=  {:serverId=>"",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    message = Socketlab::FblReport.new 
    message.api_request(query)
    message.set_response

###  Messages Open Click
    
    # https://api.socketlabs.com/v1/messagesOpenClick
    # date_format yyyy-mm-dd hh:mm:ss  If the time is omitted it will default to 00:00:00.
    # query=  {:serverId=>"",:startDate=>date_format,:endDate=>date_format,:timeZone=> timeZone offset,
    # mailingId=>"",:messageId=>"",:index=>"",:count=>"":type=>"JSON"}

    message = Socketlab::MessageOpenClick.new
    message.api_request(query)
    message.set_response

It will Returns total count,pages,count,items colletion,timestamp
Item collection has different attribute like timestamp,server id,to address,from address,message id .. etc depending upon api request, for more info refer api


### Refer http://www.socketlabs.com/api-reference/ for reference for params


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
