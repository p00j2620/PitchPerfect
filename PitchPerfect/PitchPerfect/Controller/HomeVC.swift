//
//  HomeVC.swift
//  PitchPerfect
//
//  Created by Arthur Pujols on 10/10/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var recordButtonOutlet: UIButton!
	@IBOutlet weak var progressLabel: UILabel!
	@IBOutlet weak var stopButtonOutlet: UIButton!
	

    override func viewDidLoad() {
        super.viewDidLoad()

		
    }
	
	override func viewWillAppear(_ animated: Bool) {
		stopButtonOutlet.isEnabled = false
	}

	// Actions
	
	@IBAction func recordButtonPressed(_ sender: UIButton) {
		stopButtonOutlet.isEnabled = true
		recordButtonOutlet.isEnabled = false
		progressLabel.text = "Recording in progress..."
		
	}
	
	@IBAction func stopButtonPressed(_ sender: UIButton) {
		stopButtonOutlet.isEnabled = false
		recordButtonOutlet.isEnabled = true
		progressLabel.text = "Tap to record"
		performSegue(withIdentifier: "toModeVCSegue", sender: self)
	}
	

}
