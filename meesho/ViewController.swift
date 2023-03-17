//
//  ViewController.swift
//  meesho
//
//  Created by R&W on 07/02/35.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addToCartbutton: UIButton!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var labelForSteper: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        addToCartbutton.layer.borderWidth = 1.5
        addToCartbutton.layer.cornerRadius = 5
        
    stepper.value = 1
        stepper.minimumValue = 1
        stepper.maximumValue = 20
        labelForSteper.text = Int(stepper.value).description
    }

    @IBAction func strpperAction(_ sender: UIStepper) {
        labelForSteper.text = Int(stepper.value).description
        
        if labelForSteper.text == "1"{
            priceLabel.text = "₹475"
        }
        else if labelForSteper.text == "2"{
                priceLabel.text = "₹950"
            
        }
        else if labelForSteper.text == "3"{
                priceLabel.text = "₹1425"
            
        }

        else if labelForSteper.text == "4"{
                priceLabel.text = "₹1900"
            
        }

        else if labelForSteper.text == "5"{
                priceLabel.text = "₹2375"
            
        }

        else if labelForSteper.text == "6"{
                priceLabel.text = "₹2850"
            
        }

        else if labelForSteper.text == "7"{
                priceLabel.text = "₹3325"
            
        }

        else if labelForSteper.text == "8"{
                priceLabel.text = "₹3800"
            
        }

        else if labelForSteper.text == "9"{
                priceLabel.text = "₹4275"
            
        }

        else if labelForSteper.text == "10"{
                priceLabel.text = "₹4750"
            
        }

        else if labelForSteper.text == "11"{
                priceLabel.text = "₹5225"
            
        }

        else if labelForSteper.text == "12"{
                priceLabel.text = "₹5700"
            
        }

        else if labelForSteper.text == "13"{
                priceLabel.text = "₹6175"
            
        }

        else if labelForSteper.text == "14"{
                priceLabel.text = "₹6650"
            
        }
        else if labelForSteper.text == "15"{
                priceLabel.text = "₹7125"
            
        }
        else if labelForSteper.text == "16"{
                priceLabel.text = "₹7600"
            
        }
        else if labelForSteper.text == "17"{
                priceLabel.text = "₹8075"
            
        }
        else if labelForSteper.text == "18"{
                priceLabel.text = "₹8550"
            
        }
        else if labelForSteper.text == "19"{
                priceLabel.text = "₹9025"
            
        }
        else if labelForSteper.text == "20"{
                priceLabel.text = "₹9025"
            
        }
 
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 1 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "secondpage") as! secondpage
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 2 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "thirdPage") as! thirdPage
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 3 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "fourthPage") as! fourthPage
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 4 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "fifthPage") as! fifthPage
            navigationController?.pushViewController(navigation, animated: true)
        }
        
    }
    
}


