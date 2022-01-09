//
//  User.swift
//  photo
//
//  Created by Isaias Cuvula on 9.01.22.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


struct User: Codable, Identifiable {
    @DocumentID var id: String?
    let uid, email, name: String
}
