//
//  WelcomeViewController.swift
//  ConceptOnboarding
//
//  Created by Lovish Dogra on 03/02/17.
//  Copyright © 2017 Lovish Dogra. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let userDef = UserDefaults.standard
    
    @IBOutlet weak var btnLogout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnLogout.layer.cornerRadius = self.btnLogout.frame.height/2
        self.btnLogout.layer.borderColor = UIColor.blue.cgColor
        self.btnLogout.setTitleColor(UIColor.blue, for: .normal)
        self.btnLogout.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func tapLogout(_ sender: Any) {
//        userDef.removeObject(forKey: "OnboardStatus")
//        userDef.synchronize()
        
        let appDomain = Bundle.main.bundleIdentifier!
        userDef.removePersistentDomain(forName: appDomain)
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let MainBoard = storyboard.instantiateViewController(withIdentifier: "Onboard")
        self.present(MainBoard, animated: true, completion: nil)
    }
}
