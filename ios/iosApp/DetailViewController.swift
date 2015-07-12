//
//  DetailViewController.swift
//  iosApp
//
//  Created by Alex Metcalfe on 11/07/2015.
//  Copyright (c) 2015 metcalfe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Contributor = self.detailItem as? Contributor {
            if let label = self.detailDescriptionLabel {
                label.text = "Contributions \(detail.getContributions())"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

