//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Yalamarthi,Sowmya on 9/2/21.
//

import UIKit

class ViewController: UIViewController
{
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var calcOperator:Character = " ";

    @IBOutlet weak var DisplayLabel: UILabel!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button9(_ sender: Any)
    {
        DisplayLabel.text = DisplayLabel.text! + "9"
        if operand1 == -1.1 {
            
            operand1 = 9;
        }else
        {
            operand2 = 9;
        }
    }
    @IBAction func Button5(_ sender: Any)
    {
        DisplayLabel.text = DisplayLabel.text! + "5"
        if operand2 == -1.1 {
            
            operand2 = 5;
        }else
        {
            operand1 = 5;
        }    }
    @IBAction func ButtonMul(_ sender: Any)
    {
        DisplayLabel.text = DisplayLabel.text! + "*"
        if calcOperator == " "
        {
            calcOperator = "*";
        }
        
    }
    @IBAction func ButtonEquals(_ sender: Any)
    {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcOperator == "*"
        {
            DisplayLabel.text = "\(operand1*operand2)";
        }
        
    }
    
}

