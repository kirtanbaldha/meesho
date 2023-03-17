//
//  pgbar.swift
//  meesho
//
//  Created by R&W on 17/03/23.
//

import UIKit

class pgbar: UIViewController {

   var time  = Timer()
    
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        startButtonOutlet.layer.cornerRadius = 5
       
    }
    @IBAction func startButtonAction(_ sender: Any) {
           
           var randomTime : Float = 0.0
           self.progressBar.progress = randomTime
           time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (_) in
               randomTime += 0.05
               self.progressBar.progress = randomTime
               if self.progressBar.progress == 1.0{
                   
                   self.time.invalidate()
                   self.nav()
               }
           })
          
       }
    func nav() {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
    

}
