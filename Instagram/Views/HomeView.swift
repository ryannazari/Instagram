//
//  HomeView.swift
//  Instagram
//
//  Created by Ryan Nazari on 4/3/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupViews()
//        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupViews() {
        
    }
}


class StoryCell: BaseCell {
    
    let storyImage: UIImageView = {
        let storyImg = UIImageView()
        storyImg.layer.cornerRadius = 37
        storyImg.image = UIImage(named: "elon")
        storyImg.contentMode = .scaleAspectFill
        storyImg.layer.masksToBounds = true
        storyImg.translatesAutoresizingMaskIntoConstraints = false
       return storyImg
    }()
    
    let storyName: UITextField = {
        let name = UITextField()
        name.text = "  your story"
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 13)
        name.minimumFontSize = 8
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let dividerLine: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
   
    override func setupViews() {
       super.setupViews()
        
        addSubview(storyImage)
        storyImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        storyImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        storyImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        storyImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(storyName)
        storyName.topAnchor.constraint(equalTo: storyImage.bottomAnchor, constant: 4).isActive = true
        storyName.leftAnchor.constraint(equalTo: storyImage.leftAnchor).isActive = true
        storyName.rightAnchor.constraint(equalTo: storyImage.rightAnchor).isActive = true
        storyName.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(dividerLine)
        dividerLine.topAnchor.constraint(equalTo: storyName.bottomAnchor, constant: 8).isActive = true
        dividerLine.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        dividerLine.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
}

class CardCell: BaseCell {
    
    
    var post: Post? {
        didSet {
         
            postImage.image = UIImage(named: (post?.postImage)!)
            profileImage.image = UIImage(named: (post?.profile?.profileImage)!)
            profileName.text = post?.profile?.profileName
            
            
        }
    }
    
    
    let profileImage: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 25
        img.image = UIImage(named: "mark")
        img.contentMode = .scaleAspectFill
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let profileName: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 16)
        name.text = "Steave jobs"
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let dotButton: UIButton = {
        let dBtn = UIButton()
        dBtn.setTitle("....", for: .normal)
        dBtn.setTitleColor(.black, for: .normal)
        dBtn.translatesAutoresizingMaskIntoConstraints = false
        return dBtn
    }()
    
    let postImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "elon")
        img.contentMode = .scaleAspectFill
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    
    let numberOfLike: UILabel = {
        let number = UILabel()
        number.font = UIFont.boldSystemFont(ofSize: 12)
        number.text = "267"
        number.translatesAutoresizingMaskIntoConstraints = false
        return number
    }()
    
    
    let likeButton: UIButton = {
        let likeBtn = UIButton()
        likeBtn.setTitle("likeButton", for: .normal)
        likeBtn.backgroundColor = .red
        likeBtn.translatesAutoresizingMaskIntoConstraints = false
        return likeBtn
    }()
    
    let commentButton: UIButton = {
        let commentBtn = UIButton()
        commentBtn.setTitle("commentButton", for: .normal)
        commentBtn.backgroundColor = .green
        commentBtn.translatesAutoresizingMaskIntoConstraints = false
        return commentBtn
    }()
    
    let shareButton: UIButton = {
        let shareBtn = UIButton()
        shareBtn.setTitle("shareButton", for: .normal)
        shareBtn.backgroundColor = .blue
        shareBtn.translatesAutoresizingMaskIntoConstraints = false
        return shareBtn
    }()
    
    let dividerLine: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(profileImage)
        profileImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        profileImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(profileName)
        profileName.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        profileName.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 14).isActive = true
        profileName.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        addSubview(dotButton)
        dotButton.topAnchor.constraint(equalTo: topAnchor, constant: 6).isActive = true
        dotButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        dotButton.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        addSubview(postImage)
        postImage.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 8).isActive = true
        postImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        postImage.heightAnchor.constraint(equalToConstant: 362).isActive = true
        
        addSubview(numberOfLike)
        numberOfLike.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 4).isActive = true
        numberOfLike.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        
        addSubview(likeButton)
        likeButton.topAnchor.constraint(equalTo: numberOfLike.bottomAnchor, constant: 4).isActive = true
        likeButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 42).isActive = true
        
        addSubview(commentButton)
        commentButton.topAnchor.constraint(equalTo: numberOfLike.bottomAnchor, constant: 4).isActive = true
        commentButton.leftAnchor.constraint(equalTo: likeButton.rightAnchor, constant: 4).isActive = true
        commentButton.widthAnchor.constraint(equalToConstant: 42).isActive = true
        
        addSubview(shareButton)
        shareButton.topAnchor.constraint(equalTo: numberOfLike.bottomAnchor, constant: 4).isActive = true
        shareButton.leftAnchor.constraint(equalTo: commentButton.rightAnchor, constant: 4).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 42).isActive = true
        
        addSubview(dividerLine)
        dividerLine.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 8).isActive = true
        dividerLine.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        dividerLine.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
    }
}


