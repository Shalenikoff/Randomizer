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
    
    var randomNumber: RandomNumber!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = randomNumber.minimumValue.formatted()
        maxValueTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        dismiss(animated: true)
    }
    
}
