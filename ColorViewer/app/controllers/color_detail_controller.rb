class ColorDetailController < UIViewController
  def initWithColor(color)
    self.initWithNibName(nil, bundle:nil)
    @color = color
    self
  end
  def viewDidLoad
    super
    self.view.backgroundColor = @color
    self.title = "Detail"
  end

  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem =
      UITabBarItem.alloc.initWithTitle(
        "Colors",
        image: nil,
        tag: 1)
    self
  end
end