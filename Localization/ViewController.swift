//
//  ViewController.swift
//  Localization
//
//  Created by BH on 2023/05/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    
    private lazy var cityLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = String(localized: "city")
        label.textColor = .blue
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "name".localized()
        label.textColor = .blue
        return label
    }()
    
    private lazy var genderLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "gender".localized(comment: "성별")
        label.textColor = .blue
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        [cityLabel, nameLabel, genderLabel].forEach { view.addSubview($0) }
        
        // MARK: - Constraints
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: testLabel.safeAreaLayoutGuide.topAnchor, constant: 24),
            cityLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: cityLabel.safeAreaLayoutGuide.topAnchor, constant: 24),
            nameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            genderLabel.topAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.topAnchor, constant: 24),
            genderLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }


}

