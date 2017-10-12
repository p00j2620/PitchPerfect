//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Arthur Pujols on 10/8/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

class homeVC: UIViewController {
	
	// Outlets
	
	@IBOutlet weak var recordLabel: UILabel!
	@IBOutlet weak var stopButtonOutlet: UIButton!
	@IBOutlet weak var recordButtonOutlet: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	


	// Actions
	@IBAction func recordButton(_ sender: UIButton) {
		recordLabel.text = "Recording in progress..."
	}
	
	
	@IBAction func stopButton(_ sender: UIButton) {
		recordLabel.text = "Recording stopped..."
	}
	

}

