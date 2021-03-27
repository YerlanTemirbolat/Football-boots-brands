//
//  SecondViewController.swift
//  Boots companies
//
//  Created by Admin on 3/26/21.
//

import UIKit

protocol Delegate: class {
    func changeView(image: UIImage, name: String, color: UIColor)
}

class SecondViewController: UIViewController {
    
    weak var delegate: Delegate?
    
    private var label = UILabel()
    private var nikeButton = UIButton()
    private var adidasButton = UIButton()
    private var pumaButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choose the boots"
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 1
        label.textAlignment = .center
        view.addSubview(label)
        
        nikeButton.translatesAutoresizingMaskIntoConstraints = false
        nikeButton.setImage(UIImage(named: "3"), for: .normal)
        nikeButton.addTarget(self, action: #selector(nikeTapButton), for: .touchUpInside)
        view.addSubview(nikeButton)
        
        adidasButton.translatesAutoresizingMaskIntoConstraints = false
        adidasButton.setImage(UIImage(named: "2"), for: .normal)
        adidasButton.addTarget(self, action: #selector(adidasTapButton), for: .touchUpInside)
        view.addSubview(adidasButton)

        pumaButton.translatesAutoresizingMaskIntoConstraints = false
        pumaButton.setImage(UIImage(named: "1"), for: .normal)
        pumaButton.addTarget(self, action: #selector(pumaTapButton), for: .touchUpInside)
        view.addSubview(pumaButton)
        
        constraints()
        
    }
    
    @objc func nikeTapButton() {
        dismiss(animated: true, completion: nil)
        delegate?.changeView(image: UIImage(named: "5")!, name: "Nike", color: .black)
    }
    
    @objc func adidasTapButton() {
        dismiss(animated: true, completion: nil)
        delegate?.changeView(image: UIImage(named: "6")!, name: "Adidas", color: .cyan)
    }
    
    @objc func pumaTapButton() {
        dismiss(animated: true, completion: nil)
        delegate?.changeView(image: UIImage(named: "7")!, name: "Puma", color: .black)
    }
    
    func constraints() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            nikeButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            nikeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nikeButton.widthAnchor.constraint(equalToConstant: 200),
            nikeButton.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            adidasButton.topAnchor.constraint(equalTo: nikeButton.bottomAnchor, constant: 20),
            adidasButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            adidasButton.widthAnchor.constraint(equalToConstant: 210),
            adidasButton.heightAnchor.constraint(equalToConstant: 210)
        ])
        
        NSLayoutConstraint.activate([
            pumaButton.topAnchor.constraint(equalTo: adidasButton.bottomAnchor, constant: 20),
            pumaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pumaButton.widthAnchor.constraint(equalToConstant: 210),
            pumaButton.heightAnchor.constraint(equalToConstant: 210)
        ])
    }
}
