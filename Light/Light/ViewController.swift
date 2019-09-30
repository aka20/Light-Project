//
//  ViewController.swift
//  Light
//
//  Created by Akansha Singh on 9/24/19.
//  Copyright © 2019 Akansha Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var colorSwitch: UISwitch!
    var switchOff = true
    
    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true
  
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        switchThing()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func switchToggled(_ sender: Any) {
        switchThing ()
        switchOff = !switchOff
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
       updateUI()
       lightOn = !lightOn
    }

        func updateUI() {
        if lightOn {
        view.backgroundColor = .white
        lightButton.setTitle("Off", for: .normal)
        lightButton.setTitleColor(.black, for: .normal)
          
        } else {
        view.backgroundColor = .black
        lightButton.setTitle("On", for: .normal)
        lightButton.setTitleColor(.white, for: .normal)
        }
    }
    func switchThing () {
        if switchOff {
            view.backgroundColor = .white
        }
        else {
            view.backgroundColor = .purple
        }
    }


}


