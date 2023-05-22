//
//  ViewController.swift
//  ZaloApp
//
//  Created by Khắc Hùng on 22/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(user1.detailInfo())
        print(user2.detailInfo())
        print(user3.detailInfo())
        
        print(message1.detailMessage())
        
        screenMessage1.idMessage = "idMessage1"
        print(screenMessage1.detailMessage())
    }


}

class User{
    var nameUser: String
    var password: String
    var fullNameUser: String
    var phoneNumber: String
    var email: String
    var listFriend: [User]

    
    init(nameUser: String, password: String, fullNameUser: String, phoneNumber: String, email: String) {
        self.nameUser = nameUser
        self.password = password
        self.fullNameUser = fullNameUser
        self.phoneNumber = phoneNumber
        self.email = email
        self.listFriend = []
        //self.danhSachNhomChat = []
    }

    func detailInfo() {
        print("Thong tin nguoi dung: Ten Nguoi Dung: \(self.nameUser), Ho Ten Nguoi Dung: \(self.fullNameUser), So Dien Thoai: \(self.phoneNumber), Email: \(self.email)")
    }
    func signUp() {
    }
    func signIn() {
    }
    func logOut() {
    }
    func addFriend(_ friend: User) {
    }
    func deleteFriend(_ friend: User) {
    }
}

var user1 = User(nameUser: "Hung", password: "0000" , fullNameUser:"Nguyen Khac Hung" , phoneNumber: "0123456789", email: "hungnk@gmail.com")
var user2 = User(nameUser: "Ha", password: "1111" , fullNameUser:"Nguyen Thi Ha" , phoneNumber: "022332233", email: "hant@gmail.com")
var user3 = User(nameUser: "Duan", password: "2222" , fullNameUser:"Vu Dinh Duan" , phoneNumber: "099999999", email: "duanvd@gmail.com")



class Messages{
    var content: String
    var sendTime: Date
    var sender: User
    var messageRecipient: User

    init(content: String, sendTime: Date, sender: User, messageRecipient: User) {
        self.content = content
        self.sendTime = Date()
        self.sender = sender
        self.messageRecipient = messageRecipient
    }
    func detailMessage(){
        print("\(self.content), \(self.sendTime), \(self.sender.nameUser), \(self.messageRecipient.nameUser)")
    }
}

var message1 = Messages(content: "Hello", sendTime: Date() , sender: user1, messageRecipient: user2)



class ScreenMessage : Messages{
    var idMessage: String = ""

    override func detailMessage() {
        print("\(self.idMessage), \(self.content), \(self.sendTime), \(self.sender.nameUser), \(self.messageRecipient.nameUser)")
    }
}
var screenMessage1 = ScreenMessage(content: "Hello, everybody", sendTime: Date(), sender: user1, messageRecipient: user2)


class GroupMessage {
    var nameGroupMessage: String
    var listMember: [User]
    var listMessage: [Messages]

    init(nameGroupMessage: String) {
        self.nameGroupMessage = nameGroupMessage
        self.listMember = []
        self.listMember = []
    }

    func addMember(_ memberGroup: User) {

    }

    func deleteMember(_ memberGroup: User) {

    }
}

