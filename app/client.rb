# https://github.com/AFNetworking/AFNetworking/blob/master/Example/Classes/AFAppDotNetAPIClient.m
class Client < AFHTTPClient
  def self.sharedClient
    @sharedClient ||= alloc.initWithBaseURL(NSURL.URLWithString("https://rubygems.org"))
  end

  def initWithBaseURL(url)
    super url
    setDefaultHeader "Accept", value: "text/html"
    setDefaultHeader "User-Agent", value: "AFTest"
    setReachabilityStatusChangeBlock lambda { |status|
      p status
      p status == AFNetworkReachabilityStatusNotReachable
      p "Went offline!"
    }
    self
  end
end
