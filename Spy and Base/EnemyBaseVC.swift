//
//  EnemyBaseVC.swift
//  Spy and Base
//
//  Created by Jeyakumaran Mayooresan on 7/18/17.
//  Copyright © 2017 Jeyakumaran Mayooresan. All rights reserved.
//

import UIKit

protocol SpyDelegate {
    func didFindWeaponOfMassDestruction(found : Bool)
}

class EnemyBaseVC: UIViewController {
    
    let hasWeaponOfMassDescrtruction : Bool = true
    var delegate : SpyDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendingMessage(_ sender: Any) {
        // if delegate is nil then the app will crash
        // so you must do this check
        if delegate != nil {
            delegate?.didFindWeaponOfMassDestruction(found: hasWeaponOfMassDescrtruction)
            //dismiss the model
            dismiss(animated: true, completion: nil)
        }
    }
}
