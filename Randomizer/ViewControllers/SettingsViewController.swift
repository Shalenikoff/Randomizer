//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Кирилл Шалеников on 14.04.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var mininumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var randomNumber: RandomNumber!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mininumValueTF.delegate = self
        maximumValueTF.delegate = self
        mininumValueTF.text = randomNumber.minimumValue.formatted()
        maximumValueTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        view.endEditing(true)
        delegate.setNewValues(for: randomNumber)
        dismiss(animated: true)
    }
    
}


//MARK: UITextFieldDelegate

    extension SettingsViewController: UITextFieldDelegate {
        func textFieldDidEndEditing(_ textField: UITextField) {
            guard let newValue = textField.text else { return }
            guard let numberValue = Int(newValue) else { return }
            
            if textField == mininumValueTF {
                randomNumber.minimumValue = numberValue
            } else {
                randomNumber.maximumValue = numberValue
            }
        }
    }
