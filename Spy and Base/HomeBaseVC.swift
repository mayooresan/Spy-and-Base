//
//  HomeBaseVC.swift
//  Spy and Base
//
//  Created by Jeyakumaran Mayooresan on 7/18/17.
//  Copyright © 2017 Jeyakumaran Mayooresan. All rights reserved.
//

import UIKit

class HomeBaseVC: UIViewController, SpyDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func didFindWeaponOfMassDestruction(found: Bool) {
        // Handle the received data here
        if found{
            print("Launch cruise missiles and invade")
        }else{
            print("Abort the mission to invade")
        }
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sendSpySegue" {
            let vc : EnemyBaseVC = segue.destination as! EnemyBaseVC
            vc.delegate = self
        }
    }

}
