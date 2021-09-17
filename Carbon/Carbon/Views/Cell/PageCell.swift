//
//  PageCell.swift
//  Carbon
//
//  Created by  Decagon on 23/08/2021.
//

import UIKit
import Lottie


class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupSimpleAnimation()
    }
    
    var page: Page? {
        didSet {
            guard let page = page else {
                return
            }
            
            let color = UIColor(white: 0.2, alpha: 1)
            
            let attributedText = NSMutableAttributedString(string: page.title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor: color])
            
            attributedText.append(NSAttributedString(string: "\n\n\(page.message)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: color]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let length = attributedText.string.count
            attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
            textView.attributedText = attributedText
            
        }
    }
    
    private var animationView: AnimationView!
    private func setupSimpleAnimation() {
        animationView = .init(name: "carbon")
        animationView.frame = contentView.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        addSubview(animationView)
        animationView.play()
    }
    
    let textView: UITextView = {
        let tv = UITextView()
        tv.text = "Sample for now"
        tv.isEditable = false
        tv.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        return tv
    }()
        
    func setupViews() {
        addSubview(textView)
        textView.anchorWithConstantsToTop(animationView?.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35).isActive = true
        animationView?.anchorWithConstantsToTop(topAnchor, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

