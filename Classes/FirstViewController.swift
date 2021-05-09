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
	
	weak var delegate: FirstViewControllerDelegate?

	public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	@IBAction func toSecondViewController(_ sender: UIButton) {
		let vc = SecondViewController()
		guard let nums = delegate?.getNums() else {
			return
		}
		vc.nums = nums
		self.present(vc, animated: true)
	}
	

}
