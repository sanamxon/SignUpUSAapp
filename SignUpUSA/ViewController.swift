//
//  ViewController.swift
//  SignUpUSA
//
//  Created by shokhsanam on 11/2/17.
//  Copyright © 2017 shokhsanam. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIPickerViewDataSource , UIPickerViewDelegate {

    
    let states = [ "AK - Alaska",
                  "AL - Alabama",
                  "AR - Arkansas",
                  "AS - American Samoa",
                  "AZ - Arizona",
                  "CA - California",
                  "CO - Colorado",
                  "CT - Connecticut",
                  "DC - District of Columbia",
                  "DE - Delaware",
                  "FL - Florida",
                  "GA - Georgia",
                  "GU - Guam",
                  "HI - Hawaii",
                  "IA - Iowa",
                  "ID - Idaho",
                  "IL - Illinois",
                  "IN - Indiana",
                  "KS - Kansas",
                  "KY - Kentucky",
                  "LA - Louisiana",
                  "MA - Massachusetts",
                  "MD - Maryland",
                  "ME - Maine",
                  "MI - Michigan",
                  "MN - Minnesota",
                  "MO - Missouri",
                  "MS - Mississippi",
                  "MT - Montana",
                  "NC - North Carolina",
                  "ND - North Dakota",
                  "NE - Nebraska",
                  "NH - New Hampshire",
                  "NJ - New Jersey",
                  "NM - New Mexico",
                  "NV - Nevada",
                  "NY - New York",
                  "OH - Ohio",
                  "OK - Oklahoma",
                  "OR - Oregon",
                  "PA - Pennsylvania",
                  "PR - Puerto Rico",
                  "RI - Rhode Island",
                  "SC - South Carolina",
                  "SD - South Dakota",
                  "TN - Tennessee",
                  "TX - Texas",
                  "UT - Utah",
                  "VA - Virginia",
                  "VI - Virgin Islands",
                  "VT - Vermont",
                  "WA - Washington",
                  "WI - Wisconsin",
                  "WV - West Virginia",
                  "WY - Wyoming"]
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var mailField: UITextField!
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var selectStatebtn: UIButton!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
    }

   
    @IBAction func selectState(_ sender: Any) {
        picker.isHidden = false
        
    }
    
   
    
    
    @IBAction func signUp(_ sender: Any) {
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myState = states[row]
        return myState
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let state = states[row]
        selectStatebtn.setTitle(state, for: .normal)
        
        
    }
    
    //code to dismiss keyboard
    
    @objc func dismissKeyboard()
    {
        
        view.endEditing(true)
    }
    
}

