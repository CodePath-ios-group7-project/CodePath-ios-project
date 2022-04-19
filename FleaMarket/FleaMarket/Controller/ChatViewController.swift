//
//  ChatViewController.swift
//  FleaMarket
//
//  Created by 伍伟源 on 4/9/22.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

struct Media: MediaItem {
    var url: URL?
    var image: UIImage?
    var placeholderImage: UIImage
    var size: CGSize
}

class ChatViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {

    let currentUser = Sender(senderId: "self", displayName: "John Smith")

    let otherUser = Sender(senderId: "other", displayName: "iOS TA")
    
    var messages = [Message]()// MessageType ????
    // FIXME: modify it when connect to database.
    // FIXME: let messages: [MessageType] = [Message(sender: <#T##SenderType#>, messageId: <#T##String#>, sentDate: <#T##Date#>, kind: <#T##MessageKind#>)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser,
                                messageId: "1",
                                sentDate: Date().addingTimeInterval(-86400),
                                kind: .text("Hello guy.")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "2",
                                sentDate: Date().addingTimeInterval(-80000),
                                kind: .text("How is everything going?")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "3",
                                sentDate: Date().addingTimeInterval(-76400),
                                kind: .text("Today is a super loooooooooooooooooooooooooooooooooooooooooooooooooooooooong day")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "4",
                                sentDate: Date().addingTimeInterval(-70000),
                                kind: .photo(Media(url: nil,
                                                   image: UIImage(named: "image1"),
                                                   placeholderImage: UIImage(named: "image1")!,
                                                   size: CGSize(width: 250, height: 250)))))
        
        messages.append(Message(sender: otherUser,
                                messageId: "5",
                                sentDate: Date().addingTimeInterval(-60000),
                                kind: .photo(Media(url: nil,
                                                   image: UIImage(named: "image2"),
                                                   placeholderImage: UIImage(named: "image2")!,
                                                   size: CGSize(width: 250, height: 250)))))
        
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }
    
    func currentSender() -> SenderType {
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
    

}
