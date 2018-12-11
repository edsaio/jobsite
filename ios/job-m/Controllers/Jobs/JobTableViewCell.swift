//
//  JobTableViewCell.swift
//  job-m
//
//  Created by Martin Llaneza on 12/9/18.
//  Copyright © 2018 edsaio. All rights reserved.
//

import UIKit

class JobTableViewCell: UITableViewCell {

    @IBOutlet weak var companyImage: UIImageView!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var postedDate: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var applyButton: UIButton!
    
    private let buttonBorderColor = UIColor(displayP3Red: 98/255, green: 147/255, blue: 224/255, alpha: 1.0).cgColor
    private let buttonBorderWidth = 2 as CGFloat

    var job: Job! {
        didSet {
            self.updateUI()
        }
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if superview != nil {
            containerView.layer.cornerRadius = 5
            
            companyImage.layer.cornerRadius = 25

            saveButton.layer.borderWidth = buttonBorderWidth
            saveButton.layer.borderColor = buttonBorderColor

            applyButton.layer.borderWidth = buttonBorderWidth
            applyButton.layer.borderColor = buttonBorderColor
        }
    }
    
    func updateUI()
    {
        position.text = job.position
        companyName.text = job.companyName
        location.text = job.location
        postedDate.text = job.postedDate
    }

}
