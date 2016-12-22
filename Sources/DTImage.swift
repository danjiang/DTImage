//
//  DTImage.swift
//  DTImage
//
//  Created by Dan Jiang on 2016/12/22.
//
//

import UIKit

public extension UIImage {
  
  public static func dt_snapshot(view: UIView) -> UIImage? {
    var newImage: UIImage? = nil
    
    UIGraphicsBeginImageContext(view.bounds.size)
    
    if let context = UIGraphicsGetCurrentContext() {
      
      view.layer.render(in: context)
      
      if let newImageRef = context.makeImage() {
        newImage = UIImage(cgImage: newImageRef)
      }
    }
    
    UIGraphicsEndImageContext()
    
    return newImage
  }
  
  public func dt_resize(to size: CGSize) -> UIImage? {
    var newImage: UIImage? = nil
    
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    
    if let imageRef = cgImage, let context = UIGraphicsGetCurrentContext() {
      
      context.interpolationQuality = CGInterpolationQuality.high
      
      let flipVertical = CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: size.height)
      context.concatenate(flipVertical)
      
      context.draw(imageRef, in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
      
      if let newImageRef = context.makeImage() {
        newImage = UIImage(cgImage: newImageRef, scale: scale, orientation: imageOrientation)
      }
    }
    
    UIGraphicsEndImageContext()
    
    return newImage
  }
  
  public func dt_crop(to rect: CGRect) -> UIImage? {
    var newImage: UIImage? = nil
    
    let rect_pixel = CGRect(x: rect.origin.x * scale, y: rect.origin.y * scale, width: rect.size.width * scale, height: rect.size.height * scale)
    if let imageRef = cgImage, let newImageRef = imageRef.cropping(to: rect_pixel) {
      newImage = UIImage(cgImage: newImageRef, scale: scale, orientation: imageOrientation)
    }
    
    return newImage
  }
  
}
