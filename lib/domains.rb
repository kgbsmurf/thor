class LuxuryBuilder
  def self.matches?(request)
#    debugger
  pp "Domain in Constraints: #{request.domain}"
    request.domain == "frptest.com"
    
  end
end

class DefaultDomain
  def self.matches?(request)
    request.domain != "frptest.com"
    
  end
end
