//
//  ViewController.swift
//  kiyo_1230Kadai3
//
//  Created by 清川光司 on R 5/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftValueLabel: UILabel!
    @IBOutlet private weak var rightValueLabel: UILabel!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var calculationResultLabel: UILabel!

    @IBAction private func calculationResultButton(_ sender: Any) {
        let inputNumber1 = Int(leftTextField.text ?? "") ?? 0
        let inputNumber2 = Int(rightTextField.text ?? "") ?? 0

        let signedNumber1: Int
        if leftSwitch.isOn {
            signedNumber1 = -inputNumber1
        } else {
            signedNumber1 = inputNumber1
        }

        let signedNumber2: Int
        if rightSwitch.isOn {
            signedNumber2 = -inputNumber2
        } else {
            signedNumber2 = inputNumber2
        }

        let result = signedNumber1 + signedNumber2
        leftValueLabel.text = "\(signedNumber1)"
        rightValueLabel.text = "\(signedNumber2)"
        calculationResultLabel.text = "\(result)"
    }
}
