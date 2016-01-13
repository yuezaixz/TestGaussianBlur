//
//  FirstViewController.swift
//  TestGaussianBlur
//
//  Created by 吴迪玮 on 16/1/13.
//  Copyright © 2016年 DNT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addSecondAction(sender: AnyObject) {
        let viewController = SecondViewController(nibName: "SecondViewController", bundle: NSBundle.mainBundle())
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
            let width = CGRectGetWidth(viewController.view.bounds)
            let height = CGRectGetHeight(viewController.view.bounds)
            let size = CGSizeMake(width, height)
            UIGraphicsBeginImageContext(size)
            viewController.view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                let blurImage = CommonUtils.blurryImage(image, withBlurLevel: 0.2)
                //btn才能这么搞
//                blurImage = blurImage.imageWithRenderingMode(.AlwaysTemplate)
//                self.imageView.tintColor = UIColor.yellowColor()
                self.imageView.image = blurImage
            })
            
        }
    }

}
