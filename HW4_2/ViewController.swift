//
//  ViewController.swift
//  HW4_2
//
//  Created by Роман Важник on 02.08.2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainScreenViews: [UIView]!
    @IBOutlet var mainInformationLabels: [UILabel]!
    @IBOutlet var mainInformationPhotoImage: UIImageView!
    @IBOutlet var aboutMeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForViews()
        setupForLabels()
        setupToUIImageView()
        aboutMeTextView.isUserInteractionEnabled = false
    }
    
    private func setupForViews() {
        for view in mainScreenViews {
            view.layer.cornerRadius = 12
            view.layer.borderWidth = 1
        }
    }
    
    private func setupForLabels() {
        for label in mainInformationLabels {
            label.layer.cornerRadius = 5
            label.layer.borderWidth = 1
        }
    }
    
    private func setupToUIImageView() {
        mainInformationPhotoImage.layer.cornerRadius = 50
        mainInformationPhotoImage.clipsToBounds = true
        mainInformationPhotoImage.layer.borderWidth = 1
    }


}

