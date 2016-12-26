//
//  ViewController.swift
//  FireBaseTesting
//
//  Created by Daniel Tomes on 12/26/16.
//  Copyright © 2016 Daniel Tomes. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var TitleBoxView: TitleBoxView!
    @IBOutlet weak var DebugLabel: UILabel!
    
    @IBAction func ReleaseKraken(_ sender: UIButton) {
        FIRAnalytics.logEvent(withName: "Release_Kraken", parameters: nil)
    }
    
    @IBAction func SquidFormSwitch(_ sender: UISwitch) {
        FIRAnalytics.logEvent(withName: "Squid_Form", parameters: nil)
    }
    
    @IBAction func AggressionChanged(_ sender: UISlider) {
        DebugLabel.text = String(sender.value)
        FIRAnalytics.logEvent(withName: "Aggression_Change", parameters: ["newValue": sender.value as NSObject])
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

