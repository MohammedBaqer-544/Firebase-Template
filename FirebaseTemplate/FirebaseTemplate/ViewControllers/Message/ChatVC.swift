//
//  ChatVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import MessageKit

struct Sender:SenderType {
    var senderId: String
    var displayName: String
}


struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

class ChatVC: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    
    let currentUser = Sender(senderId: "self", displayName: "الدكتور")
    let otherUser = Sender(senderId: "other", displayName: "المريض")
    
    var messages = [MessageType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser,
                                messageId: "1",
                                sentDate: Date().addingTimeInterval(-86400),
                                kind: .text("السلام عليكم")))
        messages.append(Message(sender: otherUser,
                                       messageId: "2",
                                       sentDate: Date().addingTimeInterval(-7000),
                                       kind: .text("وعليكم السلام")))
        messages.append(Message(sender: currentUser,
                                       messageId: "3",
                                       sentDate: Date().addingTimeInterval(-66400),
                                       kind: .text("ماذا تشكو منه ؟")))
        messages.append(Message(sender: otherUser,
                                       messageId: "4",
                                       sentDate: Date().addingTimeInterval(-56400),
                                       kind: .text("لدي صداع قوي في رأسي")))
        messages.append(Message(sender: currentUser,
                                       messageId: "5",
                                       sentDate: Date().addingTimeInterval(-46400),
                                       kind: .text("خذ حبة باندول وارتح ثم اذا لم يذهب الصداع تعال مرة اخرى")))
        messages.append(Message(sender: otherUser,
                                       messageId: "6",
                                       sentDate: Date().addingTimeInterval(-26400),
                                       kind: .text("حسنا ، شكراً")))
        
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
