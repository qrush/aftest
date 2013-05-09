class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    Client.sharedClient.getPath("/", parameters:nil, success: lambda { |operation, response|
      print response
      p "Worked!"
    }, failure: lambda { |request, error|
      p "Fail"
    })
    true
  end
end
