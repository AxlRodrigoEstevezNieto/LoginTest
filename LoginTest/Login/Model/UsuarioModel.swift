//
//  UsuarioModel.swift
//  LoginTest
//
//  Created by Axl Estevez on 30/06/23.
//

import Foundation

struct resultsStruct: Decodable {
    var results: [usuario]!
}

struct usuario: Decodable {
    var gender: String!
    var name: usuarioNombre!
    var location: locationUser!
    var email: String!
    var login: loginAccessKey!
    var dob: dobUser!
    var registered: registeredStruct!
    var phone: String!
    var cell: String!
    var id: idUser!
    var picture: pictureUser!
    var nat: String!
}

struct usuarioNombre: Decodable {
    var title: String!
    var first: String!
    var last: String!
}

struct locationUser: Decodable {
    var street: locationUserStreet!
    var city: String!
    var state: String!
    var country: String!
    var postcode: Int!
    var coordinates: coordinatesStruct!
    var timeZone: timezoneStruct!
}

struct timezoneStruct: Decodable {
    var offset: String!
    var description: String!
}

struct coordinatesStruct: Decodable {
    var latitude: String!
    var longitude: String!
}

struct dobUser: Decodable {
    var date: String!
    var age: Int!
}

struct registeredStruct: Decodable {
    var date: String!
    var age: Int!
}

struct idUser: Decodable {
    var name: String!
    var value: String!
}

struct pictureUser: Decodable {
    var large: String!
    var medium: String
    var thumbnail: String!
}

struct loginAccessKey: Decodable {
    var uuid: String!
    var username: String!
    var password: String!
    var salt: String!
    var md5: String!
    var sha1: String!
    var sha256: String!
}

struct locationUserStreet: Decodable {
    var number: Int!
    var name: String!
}
