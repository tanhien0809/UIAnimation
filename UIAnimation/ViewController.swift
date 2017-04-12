//
//  ViewController.swift
//  UIAnimation
//
//  Created by Cntt10 on 4/12/17.
//  Copyright © 2017 theswiftproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1: NSLayoutConstraint!
    
    @IBOutlet weak var btn2: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn1.constant -= view.bounds.width
        btn2.constant -= view.bounds.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations:{
            self.btn1.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations:{
            self.btn2.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }

}

