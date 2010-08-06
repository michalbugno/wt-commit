require 'httparty'
require 'hpricot'

module WtCommit
  def self.fetch_message
    response = Hpricot(HTTParty.get('http://whatthecommit.com/').body)
    WtCommit::sanitize((response/"div[@id='content']/p").inner_html)
  end
  
  def self.sanitize(message)
    message.gsub('"', '\"')
  end
end

