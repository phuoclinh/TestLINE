//
//  ViewController.swift
//  TestLine
//
//  Created by Linh Luu on 14/06/2023.
//

import UIKit
import Gigya


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lineTapped(_ sender: Any) {
        Gigya.sharedInstance().login(with: .line, viewController: self) { result in
            switch result {
            case .success(let data):
                print("LOGIN OK -> \(data.UID ?? "")")
            case .failure(let loginApiError):
                print("LOGIN FAIL -> \(loginApiError)")
            }
        }
    }
    
}

