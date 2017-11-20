require 'httparty'

class MessageWrapper
    def self.postMessage(message)
        #This is the link is defined by thingspeak for posting variables.
        #The API key is UT8V6875YH5PG4V and the variable we're updating, to the value "message", is "field1"
        response = HTTParty.get("https://api.thingspeak.com/update?api_key=UT8V6875YH5PG4VK&field1=" + message) 
    end
end