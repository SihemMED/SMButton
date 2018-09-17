//
//  ViewController.swift
//  CustomButton
//
//  Created by Sihem MOHAMED on 04/09/2018.
//  Copyright © 2018 SIMO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var deactivateButton: SMButton!
    @IBOutlet weak var activeButton: SMButton!
    
    @IBAction func activeButtonTapped(_ sender: Any) {
        toggleButton()
        //Do any additional action
    }
    
    @IBAction func deactivateButtonTapped(_ sender: Any) {
        toggleButton()
        //Do any additional action
    }
    
    func toggleButton() {
        activeButton.isActivate = deactivateButton.isActivate
        deactivateButton.isActivate = !activeButton.isActivate
        
        let deactivateBtnTitle = deactivateButton.isActivate ? "Active Button" : "Deactivate Button"
        deactivateButton.setTitle(deactivateBtnTitle, for: .normal)
        let activeBtnTitle = activeButton.isActivate ? "Active Button" : "Deactivate Button"
        activeButton.setTitle(activeBtnTitle, for: .normal)
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

