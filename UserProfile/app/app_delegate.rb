class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @user = User.new(id: "1", name: "Lluis", email: "lluissancho@mail.com", phone: "667233XXX")
    @user_controller = UserController.alloc.initWithUser(@user)
    @nav_controller =
      UINavigationController.alloc.initWithRootViewController(@user_controller)
    @window.rootViewController = @nav_controller
    @window.makeKeyAndVisible
    true

  end
end
