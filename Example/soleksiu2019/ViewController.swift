//
//  ViewController.swift
//  soleksiu2019
//
//  Created by soleksiu on 01/26/2019.
//  Copyright (c) 2019 soleksiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        #if swift(>=5.0)
            print("Hello, Swift 5.0")
            
        #elseif swift(>=4.2)
            print("Hello, Swift 4.2")
            
        #elseif swift(>=4.1)
            print("Hello, Swift 4.1")
            
        #elseif swift(>=4.0)
            print("Hello, Swift 4.0")
            
        #elseif swift(>=3.2)
            print("Hello, Swift 3.2")
            
        #elseif swift(>=3.0)
            print("Hello, Swift 3.0")
            
        #elseif swift(>=2.2)
            print("Hello, Swift 2.2")
            
        #elseif swift(>=2.1)
            print("Hello, Swift 2.1")
            
        #elseif swift(>=2.0)
            print("Hello, Swift 2.0")
            
        #elseif swift(>=1.2)
            print("Hello, Swift 1.2")
            
        #elseif swift(>=1.1)
            print("Hello, Swift 1.1")
            
        #elseif swift(>=1.0)
            print("Hello, Swift 1.0")
            
        #endif
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

