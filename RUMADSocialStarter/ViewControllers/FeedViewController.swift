//
//  FeedViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit
struct Tweet {
    var username: String
    var body: String
    var date: String
    var id: String
}

class FeedViewController: UIViewController {
    @IBOutlet weak var feedTableView: UITableView!
    
    var tweets: [Tweet] = []
    let tweetCellIdentifier = "tweetCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedTableView.delegate = self
        feedTableView.dataSource = self

        tweets.append(Tweet(username: "Tom Brady", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", date: "Mon.", id: "88234823490243"))
        
        tweets.append(Tweet(username: "Steph Curry", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", date: "Tue.", id: "88234823490243"))
    }
    
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: tweetCellIdentifier, for: indexPath) as! TweetCell
        
        cell.setUpCell(tweet: tweets[indexPath.row])
        
        return cell
    }
    
    
}
