//
//  JobsViewController.swift
//  job-m
//
//  Created by Martin Llaneza on 12/9/18.
//  Copyright © 2018 edsaio. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController {

    @IBOutlet weak var jobTableView: UITableView!
    
    var jobList: [Job] = [Job]()

    override func viewDidLoad() {
        super.viewDidLoad()

        jobList = Job.fetchPosts()
        jobTableView.delegate = self
        jobTableView.dataSource = self
        jobTableView.tableFooterView = UIView()
    }

}

extension JobsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobTableViewCell", for: indexPath) as! JobTableViewCell
        cell.job = jobList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, 0, 50, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }
}
