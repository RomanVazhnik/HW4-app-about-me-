//
//  InterestsViewController.swift
//  HW4_2
//
//  Created by Роман Важник on 02.08.2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import UIKit

class InterestsViewController: UIViewController {
    
    let moreDetailsArray: [String] = [
        "Занимаюсь бегом относительно недвано, короткосрочная цель пробежать minsk half maraphone (21 км) в начале сентября",
        "Занимаюсь программирование последние 2 года, успел пописать на таких языках как: ассемблер, c, с++, js, swift",
        "Интересуюсь \"железками\", слежу за трендами в сфере pc комплектующих так сказать",
        "Занимаюсь рисованием с детства, учился до 6 класса в художественной школе",
        "Любимые серии игр: batman arkham, the witcher, assasin, cs и др.",
        "Любимые сериалы: игра престолов, детсво Шелдона, аватар"
    ]
    
    @IBOutlet var interestButtons: [UIButton]!
    @IBOutlet var backgroundViews: [UIView]!
    @IBOutlet var moreDetailTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupForBackgroundViews()
        setupForInterestsButtons()
        moreDetailTextView.isUserInteractionEnabled = false
    }
    
    @IBAction func someInterestButtonPressed(_ sender: UIButton) {
        moreDetailTextView.text = moreDetailsArray[sender.tag]
    }
    
    private func setupForBackgroundViews() {
        for view in backgroundViews {
            view.layer.cornerRadius = 12
            view.layer.borderWidth = 1
        }
    }
    
    private func setupForInterestsButtons() {
        for button in interestButtons {
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
        }
    }
    
}
