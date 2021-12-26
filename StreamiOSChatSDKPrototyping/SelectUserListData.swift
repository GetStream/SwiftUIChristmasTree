//
//  SelectUserListData.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import Foundation

//  Data Structure
struct SelectUserListStructure: Identifiable{
    var id = UUID()
    var avatar: String
    var name: String
    var user: String
    var selectUserArrow: String
}

// Data Storage
let SelectUserData = [
    SelectUserListStructure(
        avatar: "luke",
        name: "Luke Skywalker",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "leia",
        name: "Leia Organa",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "han",
        name: "Han Solo",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "lando",
        name: "Lando Calrissian",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "chew",
        name: "Chewbacca",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "cpo",
        name: "c-3PO",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "rd", name: "R2-D2",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "anakin",
        name: "Anakin Skywalker",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "obi",
        name: "Obi-Wan Kenobi",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "leia",
        name: "Leia Organa",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "lando",
        name: "Lando Calrissian",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "cpo",
        name: "c-3PO",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "rd",
        name: "R2-D2",
        user: "Stream test user",
        selectUserArrow: "arrow.right"),
    SelectUserListStructure(
        avatar: "anakin",
        name: "Anakin Skywalker",
        user: "Stream test user",
        selectUserArrow: "arrow.right")
    
]
