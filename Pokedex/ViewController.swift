//
//  ViewController.swift
//  Pokedex
//
//  Created by Şule Kaptan on 3.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let contentView : UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        return contentView
    }()
    
    let pokeName : UILabel = {
       let pokeName = UILabel()
        pokeName.translatesAutoresizingMaskIntoConstraints = false
        pokeName.text = "Bulbasour"
        pokeName.textColor = .white
        pokeName.font = UIFont.boldSystemFont(ofSize: 22)
        return pokeName
    }()
    
    let pokeImage : UIImageView = {
       let pokeImage = UIImageView()
        pokeImage.translatesAutoresizingMaskIntoConstraints = false
        pokeImage.image = UIImage(named: "bulbasour")
        return pokeImage
    }()
    
    let aboutLabel : UILabel = {
       let aboutLabel = UILabel()
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.textColor = UIColor(named: "bulbasourColor")
        aboutLabel.text = "About"
        aboutLabel.font = UIFont.boldSystemFont(ofSize: 18)
        aboutLabel.textAlignment = .center
        return aboutLabel
    }()
    
    let weightLabel : UILabel = {
        let weightLabel = UILabel()
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        weightLabel.text = "6.9 kg"
        weightLabel.font = UIFont.boldSystemFont(ofSize: 13)
        return weightLabel
    }()
    
    let heightLabel : UILabel = {
        let heightLabel = UILabel()
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.text = "0.7 m"
        heightLabel.font = UIFont.boldSystemFont(ofSize: 13)
        return heightLabel
    }()
    
    let movesLabel : UILabel = {
        let movesLabel = UILabel()
        movesLabel.translatesAutoresizingMaskIntoConstraints = false
        movesLabel.text = "Chlorophyll Overgrow"
        movesLabel.font = UIFont.boldSystemFont(ofSize: 13)
        movesLabel.numberOfLines = 2
        return movesLabel
    }()
    
    let weightLabelText : UILabel = {
       let weightLabelText = UILabel()
        weightLabelText.translatesAutoresizingMaskIntoConstraints = false
        weightLabelText.text = "Weight"
        weightLabelText.textColor = .gray
        weightLabelText.textAlignment = .center
        weightLabelText.font = UIFont.boldSystemFont(ofSize: 11)
        return weightLabelText
    }()
    
    let heightLabelText : UILabel = {
       let heightLabelText = UILabel()
        heightLabelText.translatesAutoresizingMaskIntoConstraints = false
        heightLabelText.text = "Height"
        heightLabelText.textColor = .gray
        heightLabelText.textAlignment = .center
        heightLabelText.font = UIFont.boldSystemFont(ofSize: 11)
        return heightLabelText
    }()
    
    let movesLabelText : UILabel = {
       let movesLabelText = UILabel()
        movesLabelText.translatesAutoresizingMaskIntoConstraints = false
        movesLabelText.text = "Moves"
        movesLabelText.textColor = .gray
        movesLabelText.textAlignment = .center
        movesLabelText.font = UIFont.boldSystemFont(ofSize: 11)
        return movesLabelText
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    
    }

    func setupViews(){
        view.backgroundColor = UIColor(named: "bulbasourColor")
        
        view.addSubview(contentView)
        view.addSubview(pokeName)
        view.addSubview(pokeImage)
        view.addSubview(aboutLabel)
        view.addSubview(weightLabel)
        view.addSubview(heightLabel)
        view.addSubview(movesLabel)
        view.addSubview(weightLabelText)
        view.addSubview(heightLabelText)
        view.addSubview(movesLabelText)
        
        NSLayoutConstraint.activate([
            pokeName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            pokeName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            pokeName.widthAnchor.constraint(equalToConstant: 200),
            
            pokeImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            pokeImage.topAnchor.constraint(equalTo: pokeName.bottomAnchor, constant: 80),
            pokeImage.bottomAnchor.constraint(equalTo: pokeImage.bottomAnchor),
            pokeImage.widthAnchor.constraint(equalToConstant: 200),
            pokeImage.heightAnchor.constraint(equalToConstant: 200),
            
          
            aboutLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            aboutLabel.topAnchor.constraint(equalTo: pokeImage.bottomAnchor, constant: 70),
            aboutLabel.widthAnchor.constraint(equalToConstant: 100),
            
            weightLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 30),
            weightLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            weightLabel.widthAnchor.constraint(equalToConstant: 100),
            
            heightLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 30),
            heightLabel.leadingAnchor.constraint(equalTo: weightLabel.trailingAnchor, constant: 30),
            heightLabel.widthAnchor.constraint(equalToConstant: 100),
            
          
            movesLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 30),
            movesLabel.leadingAnchor.constraint(equalTo: heightLabel.trailingAnchor, constant: 25),
            movesLabel.widthAnchor.constraint(equalToConstant: 100),
           
            weightLabelText.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 30),
            weightLabelText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            weightLabelText.centerXAnchor.constraint(equalTo: weightLabel.centerXAnchor),
            weightLabelText.widthAnchor.constraint(equalToConstant: 100),
            
            heightLabelText.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 30),
            heightLabelText.centerXAnchor.constraint(equalTo: heightLabel.centerXAnchor),
            heightLabelText.leadingAnchor.constraint(equalTo: weightLabelText.trailingAnchor, constant: 30),
            heightLabelText.widthAnchor.constraint(equalToConstant: 100),
            
            movesLabelText.topAnchor.constraint(equalTo: movesLabel.bottomAnchor, constant: 30),
            movesLabelText.leadingAnchor.constraint(equalTo: heightLabelText.trailingAnchor, constant: 30),
            movesLabelText.centerXAnchor.constraint(equalTo: movesLabel.centerXAnchor),
            movesLabelText.widthAnchor.constraint(equalToConstant: 100),
            
            
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        
        ])
        
        
        
    }

}


//class ReusableView: UIView {
//
//    private let label: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    private let imageView: UIImageView = {
//        let iv = UIImageView()
//        iv.translatesAutoresizingMaskIntoConstraints = false
//        iv.image = .checkmark
//        iv.contentMode = .scaleAspectFit
//        iv.image = .add
//        iv.tintColor = .label
//        return iv
//    }()
//
//    private let hStackview: UIStackView = {
//        let sView = UIStackView()
//        sView.translatesAutoresizingMaskIntoConstraints = false
//        sView.layer.cornerRadius = 5
//        sView.axis = .horizontal
//        sView.distribution = .fillEqually
//        return sView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setup()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func setup() {
//            addSubview(hStackview)
//            hStackview.addArrangedSubview(label)
//            hStackview.addArrangedSubview(imageView)
//            self.hStackview.frame = bounds
//        }
//
//        func prepate(image: UIImage, content: String) {
//            self.imageView.image = image
//            self.label.text = content
//        }
//    }
