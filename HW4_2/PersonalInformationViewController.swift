//
//  PersonalInformationViewController.swift
//  HW4_2
//
//  Created by Роман Важник on 02.08.2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import UIKit

class PersonalInformationViewController: UIViewController {
   
    @IBOutlet var personalInformationLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForLabels()
    }
    
    private func setupForLabels() {
        for label in personalInformationLabels {
            label.layer.cornerRadius = 5
            label.layer.borderWidth = 1
            label.clipsToBounds = true
        }
    }

}
