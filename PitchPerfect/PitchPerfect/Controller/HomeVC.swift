//
//  HomeVC.swift
//  PitchPerfect
//
//  Created by Arthur Pujols on 10/10/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit
import AVFoundation

class HomeVC: UIViewController, AVAudioRecorderDelegate {
	
	// Variables
	var audioRecorder: AVAudioRecorder!
	
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
		
		let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
		let recordingName = "recordedVoice.wav"
		let pathArray = [dirPath, recordingName]
		let filePath = URL(string: pathArray.joined(separator: "/"))
		
		
		let session = AVAudioSession.sharedInstance()
		try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with: AVAudioSessionCategoryOptions.defaultToSpeaker)
		
		try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
		audioRecorder.delegate = self
		audioRecorder.isMeteringEnabled = true
		audioRecorder.prepareToRecord()
		audioRecorder.record()
		
	}
	
	@IBAction func stopButtonPressed(_ sender: UIButton) {
		stopButtonOutlet.isEnabled = false
		recordButtonOutlet.isEnabled = true
		progressLabel.text = "Tap to record"
	
		audioRecorder.stop()
		let audioSession = AVAudioSession.sharedInstance()
		try! audioSession.setActive(false)
	}
	
	func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
		performSegue(withIdentifier: "toModeVCSegue", sender: self)
	}

}
