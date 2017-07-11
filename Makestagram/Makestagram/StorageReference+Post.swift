//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Sean Le on 7/11/17.
//  Copyright © 2017 Sean Le. All rights reserved.
//

import Foundation
import FirebaseStorage
extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("images/posts/\(uid)/\(timestamp).jpg")
    }
}
