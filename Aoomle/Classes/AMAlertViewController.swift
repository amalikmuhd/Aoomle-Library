//
//  ViewController.swift
//  AoomleKit
//
//  Created by Abdulmalik Muhammad on 06/10/2020.
//

import UIKit

/// An object that displays an alert message to the user
@available(iOS 13.0, *)
public class AMAlertViewController: UIViewController {
  
  fileprivate let alertView = CustomAlert()
  
  fileprivate let alertTitle: UILabel = {
    var title = UILabel()
    title.font = .boldSystemFont(ofSize: 18)
    title.text = "Something went wrong"
    title.translatesAutoresizingMaskIntoConstraints = false
    title.adjustsFontSizeToFitWidth = true
    title.textColor = .label
    title.textAlignment = .center
    return title
  }()
  
  fileprivate let alertMessage: UITextView = {
    var tv = UITextView()
    tv.text = "There is a problem with your internet connection, please try again later. If the problem persist, contact us +2348146191761"
    tv.translatesAutoresizingMaskIntoConstraints = false
    tv.font = .monospacedDigitSystemFont(ofSize: 14, weight: .regular)
    tv.backgroundColor = .clear
    tv.textAlignment = .center
    tv.textColor = .label
    tv.isScrollEnabled = false
    tv.isUserInteractionEnabled = false
    return tv
  }()
  
  fileprivate let alertButton: UIButton = {
    let bt = UIButton(type: .system)
    bt.titleLabel?.font = .systemFont(ofSize: 18)
    bt.setTitle("Button", for: .normal)
    bt.setTitleColor(.systemBackground, for: .normal)
    bt.backgroundColor = .label
    bt.layer.cornerRadius = 10
    bt.translatesAutoresizingMaskIntoConstraints = false
    return bt
  }()
  
  
  public init(title: String, message: String, buttonTitle: String) {
    super.init(nibName: nil, bundle: nil)
    self.alertTitle.text = title
    self.alertMessage.text = message
    self.alertButton.setTitle(buttonTitle, for: .normal)
    setupUI()
  }
  
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
  }
  
  fileprivate func setupUI() {
    view.backgroundColor = .init(white: 0.2, alpha: 0.75)
    setupAlertView()
  }
  
  fileprivate func setupAlertView() {
    view.addSubview(alertView)
    alertView.addSubview(alertTitle)
    alertView.addSubview(alertMessage)
    alertView.addSubview(alertButton)
    
    alertButton.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
    
    NSLayoutConstraint.activate([
      alertView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      alertView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      alertView.widthAnchor.constraint(equalToConstant: 240),
      alertView.heightAnchor.constraint(equalToConstant: 200),
      
      alertTitle.topAnchor.constraint(equalTo: alertView.topAnchor, constant: 10),
      alertTitle.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 20),
      alertTitle.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -20),
      alertTitle.heightAnchor.constraint(equalToConstant: 20),
      
      alertMessage.topAnchor.constraint(equalTo: alertTitle.bottomAnchor, constant: 10),
      alertMessage.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 20),
      alertMessage.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -20),
      alertMessage.centerXAnchor.constraint(equalTo: alertView.centerXAnchor),
      
      alertButton.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 20),
      alertButton.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -20),
      alertButton.bottomAnchor.constraint(equalTo: alertView.bottomAnchor, constant: -8),
      alertButton.heightAnchor.constraint(equalToConstant: 44)
    
    ])
  }
  
  @objc fileprivate func handleDismiss() {
    dismiss(animated: true, completion: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

@available(iOS 13.0, *)
private class CustomAlert: UIView {
    
  init() {
    super.init(frame: .zero)
    layer.cornerRadius = 10
    layer.borderWidth = 2
    layer.borderColor = UIColor.systemGray2.cgColor
    self.backgroundColor = .systemBackground
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

