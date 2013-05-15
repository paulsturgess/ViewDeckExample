class AppDelegate

  attr_accessor :window, :centerController, :leftController, :imageController

  # - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
  # {
  #     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  #     self.leftController = [[LeftViewController alloc] initWithNibName:@"LeftViewController" bundle:nil];
  #     RightViewController* rightController = [[RightViewController alloc] initWithNibName:@"RightViewController" bundle:nil];
  #     ViewController *centerController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
  #     self.centerController = [[UINavigationController alloc] initWithRootViewController:centerController];
  #     IIViewDeckController* deckController =  [[IIViewDeckController alloc] initWithCenterViewController:self.centerController
  #                                                                                     leftViewController:self.leftController
  #                                                                                    rightViewController:rightController];
  #     deckController.rightSize = 100;
  #     self.window.rootViewController = deckController;
  #     [self.window makeKeyAndVisible];
  #     return YES;
  # }
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    self.leftController = LeftViewController.alloc.init
    rightController = RightViewController.alloc.init
    centerController = ViewController.alloc.init
    self.centerController = UINavigationController.alloc.initWithRootViewController(centerController)
    deckController = IIViewDeckController.alloc.initWithCenterViewController(centerController,
                                                                              leftViewController: leftController,
                                                                              rightViewController: rightController
                                                                            )
    deckController.rightSize = 100
    self.window.rootViewController = deckController
    self.window.makeKeyAndVisible
    true
  end
end