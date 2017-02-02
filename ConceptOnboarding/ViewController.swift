//
//  ViewController.swift
//  ConceptOnboarding
//
//  Created by Lovish Dogra on 01/02/17.
//  Copyright © 2017 Lovish Dogra. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource {
    
    let colorRed = UIColor(red:0.89, green:0.00, blue:0.00, alpha:1.0)
    let colorGreen = UIColor(red:0.28, green:0.90, blue:0.74, alpha:1.0)
    let colorWhite = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)

    @IBOutlet weak var onBoardingView: OnboardingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.onBoardingView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        //imagename, title, description, iconname, color, titleColor, descriptioncolor, titleFont, description font
        return 
    }

}

