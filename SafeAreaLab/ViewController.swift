//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by Ogulcan Kara on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews(){
        
        let topLabel = makeLabel(withText: "top")
        let bottomLabel = makeLabel(withText: "bottom")
        let leadingLabel = makeLabel(withText: "leading")
        let traillingLabel = makeLabel(withText: "trailling")
        
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(traillingLabel)
        
        NSLayoutConstraint.activate([
            
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            leadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            traillingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            traillingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 32)
        
        return label
    }
    
    
}


