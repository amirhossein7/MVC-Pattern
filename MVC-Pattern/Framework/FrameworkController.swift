//
//  FrameworkController.swift
//  MVC-Pattern
//
//  Created by Amirhossein on 8/10/23.
//

import UIKit

class FrameworkController: UIViewController {
    
    var frameworks: [FrameworkModel] = {
        let model1 = FrameworkModel(image: "ruby-on-rails", title: "Ruby on Rails", description: "Ruby on Rails is a server-side web application framework written in Ruby under the MIT License")
        let model2 = FrameworkModel(image: "laravel", title: "Laravel", description: "Laravel is a free and open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller architectural pattern and based on Symfony")
        let model3 = FrameworkModel(image: "flask", title: "Flask", description: "Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries.")
        return [model1, model2, model3]
    }()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "FrameworkCell", bundle: nil), forCellReuseIdentifier: "FrameworkCell")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }

}

extension FrameworkController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frameworks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FrameworkCell", for: indexPath) as! FrameworkCell
        return cell.updateUI(data: frameworks[indexPath.row])
    }
    
    
}
