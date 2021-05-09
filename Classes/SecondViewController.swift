//
//  SecondViewController.swift
//  NewTestPod
//
//  Created by addictedtoelixir on 2021/5/9.
//

import UIKit

class SecondViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView! {
		didSet {
			tableView.delegate = self
			tableView.dataSource = self
		}
	}
	
	public var nums = [Int]()
	override func viewDidLoad() {
        super.viewDidLoad()

		tableView.backgroundColor = .gray
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return nums.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
	}
	
	
}
