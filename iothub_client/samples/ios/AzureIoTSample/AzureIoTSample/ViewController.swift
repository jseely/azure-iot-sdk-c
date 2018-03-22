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
        DispatchQueue.main.async {
            self.logContent += logEntry
            self.txtLogDisplay.text = self.logContent
        }
    }
    
    var logContent = ""
    //var iotThread = nil
    
    @IBOutlet weak var txtLogDisplay: UITextView!
    @IBOutlet weak var btnExit: UIButton!
    
    @IBAction func exitClicked(_ sender: UIButton) {
        exit(0)
    }
    
    func start() {
        logContent = ""
        // Connect the sample to the txtLogDisplay and start its main.
        DispatchQueue.global(qos: .userInitiated).async {
            init_connector(self)
            
            self.addLogEntry("\r\ndone")
            //// The loop ended
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        txtLogDisplay.isEditable = false
        
        
        
        ////////////////////
        start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

