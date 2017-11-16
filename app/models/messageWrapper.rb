require 'httparty'

class MessageWrapper
    def self.postMessage(message)
        response = HTTParty.get("https://api.thingspeak.com/update?api_key=UT8V6875YH5PG4VK&field1=" + message) 
    end
end