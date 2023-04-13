//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Кирилл Шалеников on 14.04.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}
