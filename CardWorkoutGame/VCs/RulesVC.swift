//
//  RulesVC.swift
//  CardWorkoutGame
//
//  Created by Dostonbek on 3/9/23.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLable = UILabel()
    let ruleslabel = UILabel()
    let exerciselabel = UILabel()
    
    let backButton = CWButton(color: .systemGray, title: "Back", systemImageName: "square.and.arrow.down")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRuleslabel()
        configureExerciselabel()
        configureBackButton()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.text = "Rules"
        titleLable.font = .systemFont(ofSize: 40, weight: .bold)
        titleLable.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
    }
    
    func configureRuleslabel() {
        view.addSubview(ruleslabel)
       ruleslabel.translatesAutoresizingMaskIntoConstraints = false
       ruleslabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
       ruleslabel.font = .systemFont(ofSize: 20, weight: .semibold)
       ruleslabel.textAlignment = .center
       ruleslabel.lineBreakMode = .byWordWrapping
       ruleslabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
           ruleslabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 25),
           ruleslabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
           ruleslabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciselabel() {
        view.addSubview(exerciselabel)
      exerciselabel.translatesAutoresizingMaskIntoConstraints = false
      exerciselabel.text = "♠️ = Push-ups\n\n❤️ = Sit-ups\n\n♣︎ = Burpees\n\n♦️ = Jumping Jscks"
      exerciselabel.font = .systemFont(ofSize: 20, weight: .semibold)
      exerciselabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
           exerciselabel.topAnchor.constraint(equalTo: ruleslabel.bottomAnchor, constant: 60),
           exerciselabel.widthAnchor.constraint(equalToConstant: 200),
           exerciselabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
           
        ])
    }
    

    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
    
    func configureBackButton() {
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 50),
            backButton.heightAnchor.constraint(equalToConstant: 50),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50)
            
        ])
        
    }
}
