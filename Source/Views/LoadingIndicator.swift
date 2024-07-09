import UIKit

class LoadingIndicator: UIView {

  var indicator: UIActivityIndicatorView!

  init() {
    super.init(frame: CGRect(x: 0, y: 0, width: 60, height: 60))

    alpha = 0

    indicator = UIActivityIndicatorView()
    indicator.style = .whiteLarge
    indicator.startAnimating()

    addSubview(indicator)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()

    indicator.center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
  }
}
