//
//  FirstViewController.swift
//  NewTestPod
//
//  Created by addictedtoelixir on 2021/5/9.
//

import UIKit

protocol FirstViewControllerDelegate: class {
	func getNums() -> [Int]
}

public class FirstViewController: UIViewController {
    
    static public func instantiate() -> FirstViewController {
        let storyboard = UIStoryboard(name: "MainStoryboard", bundle: Bundle(for: FirstViewController.self))
        let vc = storyboard.instantiateInitialViewController() as! FirstViewController
        return vc
    }
	
	weak var delegate: FirstViewControllerDelegate?

	public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	@IBAction func toSecondViewController(_ sender: UIButton) {
        let vc = SecondViewController.instantiate()
		self.present(vc, animated: true)
	}

}
