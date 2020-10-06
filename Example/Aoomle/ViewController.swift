//
//  ViewController.swift
//  Aoomle
//
//  Created by Abdulmalik Muhammad on 10/06/2020.
//  Copyright (c) 2020 Abdulmalik Muhammad. All rights reserved.
//

import UIKit
import Aoomle

class ViewController: UIViewController {

  let bt = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    setupButton()
   
  }
  
  fileprivate func setupButton() {
    
    view.addSubview(bt)
    bt.translatesAutoresizingMaskIntoConstraints = false
    bt.setTitle("Send", for: .normal)
    bt.setTitleColor(.label, for: .normal)
    
    bt.addTarget(self, action: #selector(handleSend), for: .touchUpInside)
    
    NSLayoutConstraint.activate([
    
      bt.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
      bt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      bt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      bt.heightAnchor.constraint(equalToConstant: 44)
    ])
    
  }
  
  @objc fileprivate func handleSend() {
    let alertView = AMAlertViewController(title: "Internet Connection", message: "There is a problem with your internet connection, please try again later. If the problem persist, contact us +2348146191761", buttonTitle: "OK")
    alertView.modalTransitionStyle = .crossDissolve
    alertView.modalPresentationStyle = .fullScreen
    present(alertView, animated: true, completion: nil)
  }

}

