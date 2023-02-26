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
        var inputNumber1 = Int(leftTextField.text ?? "") ?? 0
        var inputNumber2 = Int(rightTextField.text ?? "") ?? 0
        let result: Int


        if leftSwitch.isOn {
            inputNumber1 *= -1
        } else {
            inputNumber1 *= 1
        }

        if rightSwitch.isOn {
            inputNumber2 *= -1
        } else {
            inputNumber2 *= 1
        }

        result = inputNumber1 + inputNumber2
        leftValueLabel.text = "\(inputNumber1)"
        rightValueLabel.text = "\(inputNumber2)"
        calculationResultLabel.text = "\(result)"
    }
}

