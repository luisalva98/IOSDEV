//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Luis Alva on 9/30/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    var favorited:Bool = false
    var tweetid: Int = -1
    var retweeted: Bool = false
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var favButton: UIButton!
    @IBAction func favoriteButton(_ sender: Any) {
        let toBeFavorited =  !favorited
        if(toBeFavorited){
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetid, success: {
                self.setFavorited(true)
            }, failure: { (Error) in
                print("favorite did not succeed")
            })
        }else{
            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetid, success: {
                self.setFavorited(false)
            }, failure: { (Error) in
                print("unfavorite did not succeed")
            })
        }
        
    }
    
    @IBAction func reButton(_ sender: Any) {
        TwitterAPICaller.client?.retweet(tweetId: tweetid, success: {
            self.setReteweeted(true)
        }, failure: { (Error) in
            print("error retweeting")
        })
    }
    
    func setReteweeted(_ isRetweeted: Bool){
        if(isRetweeted){
            retweetButton.setImage(UIImage(named:"retweet-icon-green"), for: UIControl.State.normal)
            retweetButton.isEnabled = false
        }else{
            retweetButton.setImage(UIImage(named:"retweet-icon"), for: UIControl.State.normal)
            retweetButton.isEnabled = true
            
        }
    }
    
    
    func setFavorited(_ isFavorited: Bool){
        favorited = isFavorited 
        if(favorited){
            favButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
        }else{
            favButton.setImage(UIImage(named:"favor-icon"), for: UIControl.State.normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
