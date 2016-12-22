//
//  ViewController.swift
//  DTImage iOS Example
//
//  Created by Dan Jiang on 2016/11/8.
//
//

import UIKit
import DTImage

class ViewController: UIViewController {

  @IBOutlet weak var resizeImageView: UIImageView!
  @IBOutlet weak var cropImageView: UIImageView!
  @IBOutlet weak var snapshotImageView: UIImageView!
  @IBOutlet weak var control: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    if let resizeImage = #imageLiteral(resourceName: "lighthouse").dt_resize(to: CGSize(width: 200, height: 150)) {
      resizeImageView.image = resizeImage
    }
    
    if let cropImage = #imageLiteral(resourceName: "lighthouse").dt_crop(to: CGRect(x: 150, y: 100, width: 100, height: 100)) {
      cropImageView.image = cropImage
    }
    
    if let snapshotImage = UIImage.dt_snapshot(view: control) {
     snapshotImageView.image = snapshotImage
    }
  }

}

