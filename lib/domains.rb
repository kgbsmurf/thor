class LuxuryBuilder
  def self.matches?(request)
    request.domain == "frptest.com"
  end
end

class DefaultDomain
  
  def self.matches?(request)
    request.domain != "frptest.com"
  end
end
