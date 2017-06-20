//
//  JSActivityIndicatorView.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 23/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit

class ActivityIndicatorView: UIView {
    
    var activityIndicatorView: UIActivityIndicatorView!
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = UIColor.lightGray
        activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle:.white)
        activityIndicatorView.center = center
        addSubview(activityIndicatorView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startAnimating() {
        activityIndicatorView.startAnimating()
    }
    
    func stopAnimating() {
        activityIndicatorView.stopAnimating()
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

extension ActivityIndicatorView {
    func showActivity(){
        let window = UIApplication.shared.windows.first!
        self.startAnimating()
        window.addSubview(self)
        window.bringSubview(toFront: self)
    }
    
    func hideActivity(){
        self.stopAnimating()
        self.removeFromSuperview()
    }
}
