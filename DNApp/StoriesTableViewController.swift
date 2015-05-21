//
//  StoriesTableViewController.swift
//  DNApp
//
//  Created by UIT Coach on 2015-05-20.
//  Copyright (c) 2015 Meng To. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
    }

    @IBAction func menuButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("MenuSegue", sender: self)
    }
    
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("LoginSegue", sender: self)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryCell") as! StoryTableViewCell
        
        cell.titleLabel.text = "How did I get so Awesome?"
        cell.badgeImageView.image = UIImage(named: "badge-apple")
        cell.avatarImageView.image = UIImage(named: "content-avatar-default")
        cell.authorLabel.text = "Rob Myers, designer and coder"
        cell.timeLabel.text = "5m"
        cell.upvoteButton.setTitle("59", forState: UIControlState.Normal)
        cell.commentButton.setTitle("32", forState: UIControlState.Normal)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("WebSegue", sender: self)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}
