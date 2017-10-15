//
//  ViewController.swift
//  Clear-Vowels
//
//  Created by Tina Wang on 10/15/17.
//  Copyright © 2017 Tina Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Variable for the label for the output string
    @IBOutlet weak var output: UILabel!
    // left text field
    @IBOutlet weak var leftTextField: UITextField!
    // right text field
    @IBOutlet weak var rightTextField: UITextField!
    
    // Adds the output from the left text field onto the label.
    // All the text in from the left box will be lowercase in the label.
    @IBAction func leftSend(_ sender: UIButton) {
        output.text = (output.text ?? "") + (leftTextField.text ?? "").lowercased()
    }
    // Adds the output from the right text field on the label.
    // All the text in from the right box will be uppercase in the label.
    @IBAction func rightSend(_ sender: UIButton) {
        output.text = (output.text ?? "") + (rightTextField.text ?? "").uppercased()
    }
    
    // Clears all the text in the 'output' label.
    @IBAction func clearButton(_ sender: UIButton) {
        output.text = ""
    }
    
    // Clear all the vowels in the label
    @IBAction func clearVowelButton(_ sender: UIButton) {
        var new_text = (output.text ?? "")
        let vowels : [Character] = ["a", "e", "i", "o", "u",
                                    "A", "E", "I", "O", "U"]
        for i in (output.text ?? "") {
            if vowels.contains(i) {
                new_text = new_text.replacingOccurrences(of: String(i), with: "")
            }
        }
        output.text = new_text
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

