//
//  AnimalsTableViewController.swift
//  AnimalSpotter
//
//  Created by Percy Ngan on 9/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
	
	let apiController = APIController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		if apiController.bearer == nil {
			performSegue(withIdentifier: "LogInViewModalSegue", sender: self)
		}
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 0
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return 0
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "LogInViewModalSegue" {
			if let loginVC = segue.destination as? LoginViewController {
				loginVC.apiController = apiController
			}
		}
	}
}
