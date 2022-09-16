//
//  ListModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import Foundation

struct ListModel: Hashable {
    let icon: String
    let listItem: String
}

extension ListModel {
    static var data = [
        ListModel(icon: "music.note.list", listItem: "Плейлисты"),
        ListModel(icon: "music.mic", listItem: "Артисты"),
        ListModel(icon: "rectangle.stack", listItem: "Альбомы"),
        ListModel(icon: "tv", listItem: "Телешоу и фильмы"),
        ListModel(icon: "music.note.tv", listItem: "Видеоклипы"),
        ListModel(icon: "guitars", listItem: "Жанры"),
        ListModel(icon: "person.crop.rectangle.stack", listItem: "Сборники"),
        ListModel(icon: "music.quarternote.3", listItem: "Авторы"),
        ListModel(icon: "arrow.down.circle", listItem: "Загружено"),
        ListModel(icon: "music.note.house", listItem: "Домашняя коллекция")
    ]
}
