//
//  TweetCell.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/20/21.
//

import UIKit

class TweetCell: UITableViewCell {
    @IBOutlet weak var tweetUserLabel: UILabel!
    @IBOutlet weak var tweetBodyLabel: UILabel!
    @IBOutlet weak var tweetDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(tweet: Tweet){
        
        tweetUserLabel.text = tweet.username
        tweetBodyLabel.text = tweet.body
        tweetDateLabel.text = tweet.date
        
    }

}
