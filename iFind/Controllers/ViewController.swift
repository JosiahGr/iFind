//
//  ViewController.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//
//
//import SwiftUI
//
//class ViewController: UIViewController {
//    
//        private let floatingButton: UIButton = {
//        let button = UIButton(frame: CGRect(x: 0,
//                                            y: 0,
//                                            width: 60,
//                                            height: 60))
//        button.backgroundColor = .systemPink
//        
//        let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
//        
//        button.setImage(image, for: .normal)
//        button.tintColor = .white
//        button.setTitleColor(.white, for: .normal)
//        button.layer.shadowRadius = 10
//        button.layer.shadowOpacity = 0.3
//        button.layer.cornerRadius = 30
//
//        
//        return button
//    }()
//   
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(floatingButton)
//        floatingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        floatingButton.frame = CGRect(x: view.frame.size.width - 70,
//                                      y: view.frame.size.height - 100,
//                                      width: 60,
//                                      height: 60
//        )
//    }
//    
//        
//        @objc private func didTapButton() {
//            let alert = UIAlertController(title: "add something", message: "Floating Button Tapped", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
//            present(alert, animated: true)
//    }
//}


