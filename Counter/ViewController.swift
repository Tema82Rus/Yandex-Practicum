//
//  ViewController.swift
//  Counter
//
//  Created by Artem Yaroshenko on 26.10.2025.
//

import UIKit

final class ViewController: UIViewController {
    private var count: Int = 0
    
    private var currentDate: String { Date().formatted() }
    
    @IBOutlet private weak var textHistory: UITextView!
    
    @IBOutlet private weak var labelCounter: UILabel!
    
    @IBOutlet private weak var buttonIncrement: UIButton!
    
    @IBOutlet private weak var buttonDecrement: UIButton!
    
    @IBOutlet private weak var buttonReset: UIButton!
    
    @IBAction private func buttonIncrementTap(_ sender: Any) {
        count += 1
        labelCounter.text = "Значение счётчика: \(count)"
        textHistory.text += "\(currentDate.description): значение изменено на +1\n"
    }
    
    @IBAction private func buttonDecrementTap(_ sender: Any) {
        if !(count == 0) {
            count -= 1
            labelCounter.text = "Значение счётчика: \(count)"
            textHistory.text += "\(currentDate.description): значение изменено на -1\n"
        } else {
            textHistory.text += "\(currentDate.description): попытка уменьшить значение счётчика ниже 0\n"
        }
    }
    
    @IBAction private func buttonResetTap(_ sender: Any) {
        count = 0
        labelCounter.text = "Значение счётчика: \(count)"
        textHistory.text += "\(currentDate.description): значение сброшено\n"
    }
    
    @IBAction private func buttonCountDidTap(_ sender: Any) {
        count += 1
        labelCounter.text = "Значение счётчика: \(count)"
        textHistory.text += "\(currentDate.description): значение изменено на +1\n"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounter.text = "Значение счётчика: \(count)"
        textHistory.text = "История изменений:\n"
    }
    
    
}

