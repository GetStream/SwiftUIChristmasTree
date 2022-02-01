//
//  MessageListData.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 15.10.2021.
//

import Foundation

//  Data Structure
struct ChannelListStructure: Identifiable{
    var id = UUID()
    var userAvatar: String
    var userName: String
    var userMessageSummary: String
    var userStatus: String
    var timestamp: String
    var unreadMessageCount: String
    var receipt: String
}

//  Data Storage
let ChannelData = [
    ChannelListStructure (
        userAvatar: "user_luke",
        userName: "Blushing Drawer",
        userMessageSummary: "Hi",
        userStatus: "circle.fill",
        timestamp: "Today",
        unreadMessageCount: "12.circle.fill",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user-chew",
        userName: "General Grievous",
        userMessageSummary: "Another photo",
        userStatus: "",
        timestamp: "Today",
        unreadMessageCount: "",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user_cpo",
        userName: "R2-D2",
        userMessageSummary: "... is typing",
        userStatus: "circle.fill",
        timestamp: "12.08",
        unreadMessageCount: "",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user_han",
        userName: "Old Friends",
        userMessageSummary: "https://getstream.io/blog/",
        userStatus: "",
        timestamp: "15.10",
        unreadMessageCount: "30.circle.fill",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user_lando",
        userName: "Abena Serwaa",
        userMessageSummary: "No messages",
        userStatus: "circle.fill",
        timestamp: "",
        unreadMessageCount: "",
        receipt: ""),
    ChannelListStructure (
        userAvatar: "user_leia",
        userName: "Leia Organa",
        userMessageSummary: "No messages",
        userStatus: "",
        timestamp: "",
        unreadMessageCount: "",
        receipt: ""),
    ChannelListStructure (
        userAvatar: "user_luke",
        userName: "C-3PO",
        userMessageSummary: "https://www.youtube.com/channel/UCrRfChkGnQ_Vnfh8Tytaehw/playlists",
        userStatus: "circle.fill",
        timestamp: "11.00",
        unreadMessageCount: "",
        receipt: "deliveredReceipt"),
    ChannelListStructure (
        userAvatar: "user_han",
        userName: "Inv2 Media",
        userMessageSummary: "This is Obi",
        userStatus: "",
        timestamp: "Yesterday",
        unreadMessageCount: "6.circle.fill",
        receipt: "deliveredReceipt"),
    ChannelListStructure (
        userAvatar: "user_lando",
        userName: "Earl Miles2",
        userMessageSummary: "Another image",
        userStatus: "",
        timestamp: "Yesterday",
        unreadMessageCount: "",
        receipt: "deliveredReceipt"),
    ChannelListStructure (
        userAvatar: "user_luke",
        userName: "Some Group",
        userMessageSummary: "C-3P0",
        userStatus: "circle.fill",
        timestamp: "15/10/2021",
        unreadMessageCount: "",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user_cpo",
        userName: "Group1",
        userMessageSummary: "Anakin official",
        userStatus: "",
        timestamp: "14/10/2021",
        unreadMessageCount: "4.circle.fill",
        receipt: "deliveredReceipt"),
    ChannelListStructure (
        userAvatar: "user_han",
        userName: "Darth Maul and R2-D2",
        userMessageSummary: "Just testing",
        userStatus: "",
        timestamp: "13/10/2021",
        unreadMessageCount: "",
        receipt: "readReceipt"),
    ChannelListStructure (
        userAvatar: "user_luke",
        userName: "Kwaku Manu",
        userMessageSummary: "No messages",
        userStatus: "",
        timestamp: "",
        unreadMessageCount: "",
        receipt: ""),
    ChannelListStructure (
        userAvatar: "user_cpo",
        userName: "Kofi Mensah Harrison",
        userMessageSummary: "How can I help?",
        userStatus: "circle.fill",
        timestamp: "10/10/2021",
        unreadMessageCount: "6.circle.fill",
        receipt: "readReceipt")
]
