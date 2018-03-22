//
//  ViewController.swift
//  AzureIoTSample
//
//  Created by Roy Sprowl on 3/21/18.
//  Copyright © 2018 Roy Sprowl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, logTarget {
    
    func addLogEntry(_ logEntry: String!) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DispatchQueue.global(qos: .userInitiated).async {
            init_connector(self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

