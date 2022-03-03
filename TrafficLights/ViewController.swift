//
//  ViewController.swift
//  TrafficLights
//
//  Created by Черненко Татьяна Анатольевна on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var redSignal: UIView!
	@IBOutlet var yellowSignal: UIView!
	@IBOutlet var greenSignal: UIView!
	@IBOutlet var trafficLightsButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		//trafficLightsButton.configuration = setupButton(with: "Start")
	}
	
	let defaultAlphaLabel: CGFloat = 0.3
	let startAlphaLabel: CGFloat = 1

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		redSignal.layer.cornerRadius = redSignal.frame.height / 2
		yellowSignal.layer.cornerRadius = yellowSignal.frame.height / 2
		greenSignal.layer.cornerRadius = greenSignal.frame.height / 2
	}

	@IBAction func trafficLightsButtonPressed() {
		//greetingLabel.isHidden.toggle()
		trafficLightsButton.setTitle("Next", for: .normal)
		//trafficLightsButton.configuration = setupButton(with: "Next")
		if redSignal.alpha == startAlphaLabel {
			redSignal.alpha = defaultAlphaLabel
			yellowSignal.alpha = startAlphaLabel
		} else if yellowSignal.alpha == startAlphaLabel {
			yellowSignal.alpha = defaultAlphaLabel
			greenSignal.alpha = startAlphaLabel
		} else if greenSignal.alpha == startAlphaLabel {
			greenSignal.alpha = defaultAlphaLabel
			redSignal.alpha = startAlphaLabel
		} else {
			redSignal.alpha = startAlphaLabel
		}
	}
	
//	private func setupButton(with title: String) -> UIButton.Configuration {
//		var buttonConfiguration = UIButton.Configuration.filled()
//		buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5207615495, green: 0.8695375323, blue: 0.8642837405, alpha: 1)
//		buttonConfiguration.title = title
//		buttonConfiguration.buttonSize = .large
//		buttonConfiguration.cornerStyle = .large
//		buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
//		return buttonConfiguration
//	}
	
}

