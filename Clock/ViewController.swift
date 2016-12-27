//
//  ViewController.swift
//  Clock
//
//  Created by mohamed amine ait belarbi on 27/12/2016.
//  Copyright © 2016 aitbelarbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clockLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Get degrees for radians
        algoCalc()
    }
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        algoCalc()
    }
    
    func algoCalc() {
        let calendar = NSCalendar.current
        let hour = calendar.component(.hour, from: datePicker.date)
        let minute = calendar.component(.minute, from: datePicker.date)
        
        let firstAngle = Double(((60 * hour) + minute))/2
        let secondAngle = Double(6*minute)
        var calc = firstAngle-secondAngle
        if calc<0 {
            calc = -1*calc
        }
        let result:Double = (360-calc)
        clockLabel.text = "The smaller angle between clock hands \(result) is degrees"
    }
    
}

