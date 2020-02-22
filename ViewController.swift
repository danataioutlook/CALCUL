//
//  ViewController.swift
//  Calcul
//
//  Created by Dana on 2/22/20.
//  Copyright © 2020 Dana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
       var numberFromScreen:Double=0;
       var firstnum:Double=0;
       var operation:Int=0;
       var mathSign:Bool=false;

    @IBOutlet weak var RES: UILabel!
    @IBAction func Numbers(_ sender: UIButton) {
    
        if mathSign==true{
            RES.text=String(sender.tag)
            mathSign=false
        }
        else{
           RES.text=RES.text! + String(sender.tag)
        }
        
    
        numberFromScreen=Double(RES.text!)!
    }
    
    
    @IBAction func action(_ sender: UIButton) {
    
    if RES.text != "" && sender.tag != 10 && sender.tag != 15  {
            firstnum=Double(RES.text!)!
            if sender.tag == 11 { //Деление
                RES.text="/";
                }
            else if sender.tag == 12{ //Умножение
                RES.text="*";
            }
            else if sender.tag == 13{
                RES.text="-";
                //Минус
                }
            else if sender.tag == 14{
              RES.text="+";
                //Плюс
                }
           
           
            operation = sender.tag
            mathSign=true;
        }
        else if sender.tag==15{ // Посчитать все
            
            if operation == 11{
               RES.text = String(firstnum / numberFromScreen)
            }
            else if operation == 12{
                RES.text = String(firstnum * numberFromScreen)
            }
            else if operation == 13{
                RES.text = String(firstnum - numberFromScreen)
            }
            else if operation == 14{
               RES.text = String(firstnum + numberFromScreen)
            }
           else if operation == 17{
                RES.text = String(firstnum + numberFromScreen)
            }
           
            
        }
        else  if sender.tag == 10{
          RES.text = ""
            firstnum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

