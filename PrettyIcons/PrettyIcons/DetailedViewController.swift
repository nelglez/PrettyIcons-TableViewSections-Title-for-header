//
//  DetailedViewController.swift
//  PrettyIcons
//
//  Created by Nelson Gonzalez on 5/9/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var icon: Icon? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    

    private func updateViews() {
        guard let icons = icon, isViewLoaded else { return }
        
        nameLabel.text = icons.title
        descriptionLabel.text = icons.subtitle
        imageView.image = icons.image
    }
   

}
