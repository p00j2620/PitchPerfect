//
//  RoundedButton.swift
//  PitchPerfect
//
//  Created by Arthur Pujols on 10/13/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit
@IBDesignable

class RoundedButton: UIButton {

	override func awakeFromNib() {
		super.awakeFromNib()
		setUpView()
	}
	
	func setUpView() {
		self.layer.cornerRadius = self.frame.width / 2
		self.clipsToBounds = true
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		setUpView()
	}

}
