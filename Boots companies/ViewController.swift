//
//  ViewController.swift
//  Boots companies
//
//  Created by Admin on 3/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageView = UIImageView()
    private var label = UILabel()
    private var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "4")
        imageView.contentMode = .scaleToFill
        imageView.resignFirstResponder()
        view.addSubview(imageView)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .red
        label.textAlignment = .center
        label.sizeToFit()
        view.addSubview(label)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Choose your brand", for: .normal)
        button.tintColor = .black
        button.backgroundColor = .gray
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
        
        constraints()
    }

    @objc func didTapButton() {
        let vc = SecondViewController()
        self.present(vc, animated: true, completion: nil)
        vc.delegate = self
    }
    
    func constraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 250),
            label.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

}

extension ViewController: Delegate {
    func changeView(image: UIImage, name: String, color: UIColor) {
        imageView.image = image
        label.text = name
        view.backgroundColor = color
    }
}
