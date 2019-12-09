import UIKit

class DCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor.white
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.2054900527, green: 0.6265547872, blue: 0.8721444607, alpha: 1)
        UITabBar.appearance().selectionIndicatorImage = UIImage().makeImageWithColorAndSize(color: #colorLiteral(red: 0, green: 0.4589281678, blue: 0.7517020106, alpha: 1), size: CGSize(width: tabBar.frame.width/2, height: tabBar.frame.height))
        for item in self.tabBar.items! {
            if let image = item.image {
                item.image = image.withRenderingMode(.alwaysOriginal)
            }
          }
        }
}



extension UIImage {
      func makeImageWithColorAndSize(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
      }
}