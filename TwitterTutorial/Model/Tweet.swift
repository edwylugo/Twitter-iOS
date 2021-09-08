//
//  Tweet.swift
//  TwitterTutorial
//
//  Created by Edwy Lugo on 14/03/21.
//  Copyright © 2021 SDvirtua Marketing Digital. All rights reserved.
//

import Foundation

struct Tweet {
    let caption: String
    let tweetID: String
    var likes: Int
    var timestamp: Date!
    let retweetCount: Int
    var user: User
    var didLike = false
    var replyintTo: String?
    
    var isReply: Bool {
        return replyintTo != nil
    }
    
    init(user: User, tweetID: String, dictionary: [String: Any]) {
        self.tweetID = tweetID
        self.user = user
        self.caption=dictionary["caption"] as? String ?? ""
        self.likes=dictionary["likes"] as? Int ?? 0
        self.retweetCount=dictionary["retweets"] as? Int ?? 0
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        
        if let replyintTo = dictionary["replyintTo"] as? String {
            self.replyintTo = replyintTo
        }
        
    }
}
