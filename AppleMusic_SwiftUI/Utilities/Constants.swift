//
//  Constants.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import Foundation
import UIKit

//MARK: - Playing view cinstants
enum PlayerViewConstants {
    static let image: String = "playing_image"
    static let playingText: String = "Eminem - Spend Some Time"
}

//MARK: - Tab bar constants
enum TabBarConstants {
    static let mediaLibraryLabel: String = "Медиатека"
    static let radioLabel: String = "Радио"
    static let searchLabel: String = "Поиск"
}

//MARK: = Media library screen constants
enum MediaLibraryConstants {
    enum Navigation {
        static let title: String = "Медиатека"
        static let editButton: String = "Править"
        static let doneButton: String = "Готово"
    }
    
    enum Main {
        static let header: String = "Ищете свою музыку?"
        static let description: String = "Здесь появится купленная Вами в iTunes Store музыка."
    }
    
    enum ListModel {
        static let playlists: String = "Плейлисты"
        static let artists: String = "Артисты"
        static let albums: String = "Альбомы"
        static let tvAndFilms: String = "Телешоу и фильмы"
        static let clips: String = "Видеоклипы"
        static let genres: String = "Жанры"
        static let collections: String = "Сборники"
        static let authors: String = "Авторы"
        static let download: String = "Загружено"
        static let homeCollection: String = "Домашняя коллекция"
    }
}

//MARK: - Radio screen constants
enum RadioConstants {
    //Interesting view model
    enum InterestingModel {
        static let firstTitle: String = "АЛЬБОМ"
        static let firstSubTitle: String = "Неоновый ретрорейв Burito"
        static let firstDescription: String = "Продолжение ретро-стилистики на новой пластинке"
        static let firstImage: String = "item1"
        
        static let secondTitle: String = "АЛЬБОМ"
        static let secondSubTitle: String = "Возвращение легенды андерграунда"
        static let secondDescription: String = "Абсурд и бессознательный рэп Паши-Техника"
        static let secondImage: String = "item2"
        
        static let thirdTitle: String = "СИНГЛ"
        static let thirdSubTitle: String = "HORUS о пройденом пути"
        static let thirdDescription: String = "История об относительности жизни"
        static let thirdImage: String = "item3"
        
        static let fourthTitle: String = "ПЛЕЙЛИСТ"
        static let fourthSubTitle: String = "Неопоп: трендсеттеры русской поп-музыки"
        static let fourthDescription: String = "В поисках нового звука"
        static let fourthImage: String = "item4"
        
        static let fifthTitle: String = "СИНГЛ"
        static let fifthSubTitle: String = "Arut объединяется с MORGENSHTERN"
        static let fifthDescription: String = "Люкс и роскошь на треп-бите"
        static let fifthImage: String = "item5"
        
        static let sixthTitle: String = "СИНГЛ"
        static let sixthSubTitle: String = "ЛСП и отнолшения"
        static let sixthDescription: String = "Трогательныые танцевальный трек"
        static let sixthImage: String = "item6"
    }
    
    enum RadioNavigation {
        static let title = "Радио"
    }
    
    //Station list model
    enum RadioModel {
        static let firstTitle: String = "Лето на репите"
        static let firstSubtitle: String = "Станция Apple Music"
        static let firstImage: String = "station1"
        
        static let secondTitle: String = "Популярные плейлисты"
        static let secondSubtitle: String = "Станция Apple Music"
        static let secondImage: String = "station2"
        
        static let thirdTitle: String = "Осенняя"
        static let thirdSubtitle: String = "Станция Apple Music"
        static let thirdImage: String = "station3"
        
        static let fourthTitle: String = "Книги"
        static let fourthSubtitle: String = "Станция Apple Music"
        static let fourthImage: String = "station4"
        
        static let fifthTitle: String = "В настроение"
        static let fifthSubtitle: String = "Станция Apple Music"
        static let fifthImage: String = "station5"
        
        static let sixthTitle: String = "По жанру"
        static let sixthSubtitle: String = "Станция Apple Music"
        static let sixthImage: String = "station6"
        
        static let seventhTitle: String = "Эксклюзивы"
        static let seventhSubtitle: String = "Станция Apple Music"
        static let seventhImage: String = "station7"
        
        static let eighthTitle: String = "Выбор редакции"
        static let eighthSubtitle: String = "Станция Apple Music"
        static let eighthImage: String = "station8"
        
        static let ninthTitle: String = "Фоном"
        static let ninthSubtitle: String = "Станция Apple Music"
        static let ninthImage: String = "station9"
        
        static let tenthTitle: String = "Машина времени"
        static let tenthSubtitle: String = "Станция Apple Music"
        static let tenthImage: String = "station10"
    }
    
    //Station list title
    enum StationList {
        static let title: String = "Станции"
    }
}

//MARK: Search screen constants
enum SearchConstants {
    //Category image
    enum CategoryModel {
        static let firstImage: String = "90"
        static let secontImage: String = "2000"
        static let thirdImage: String = "2010"
        static let fourthImage: String = "charts"
        static let fifthImage: String = "dimensional"
        static let sixthImage: String = "dream"
        static let seventhImage: String = "for_gamers"
        static let eighthImage: String = "for_kids"
        static let ninthImage: String = "func"
        static let tenthImage: String = "hits"
        static let eleventhImage: String = "jazz"
        static let twelfthImage: String = "main"
        static let thirteenthImage: String = "relax"
        static let fourteenthImage: String = "rnb"
        static let fifteenthImage: String = "rus_hiphop"
        static let sixteenthImage: String = "sport"
    }
    
    //Playlist image
    enum PlaylistModel {
        static let firstImage: String = "first_playlist"
        static let firstTitle: String = "СЛУШАЙТЕ ПРЯМО СЕЙЧАС"
        static let firstSubtitle: String = "Хард-рок 90-х"
        static let firstGenre: String = "Apple Music Хард-рок"
        
        static let secondImage: String = "second_playlist"
        static let secondTitle: String = "ГОДОВЩИНА РЕЛИЗА"
        static let secondSubtitle: String = "Sehnsucht"
        static let secondGenre: String = "Rammstein"
        
        static let thirdImage: String = "third_playlist"
        static let thirdTitle: String = "СЛУШАЙТЕ ПРЯМО СЕЙЧАС"
        static let thirdSubtitle: String = "Ностальгия по инди 90-х"
        static let thirdGenre: String = "Apple Music"
        
        static let fourthImage: String = "fourth_playlist"
        static let fourthTitle: String = "ИЗБРАННЫЙ ПЛЕЙЛИСТ"
        static let fourthSubtitle: String = "Хиты 90-х"
        static let fourthGenre: String = "Apple Music 90-е"
        
        static let fifthImage: String = "fifth_playlist"
        static let fifthTitle: String = "СЛУШАЙТЕ ПРЯМО СЕЙЧАС"
        static let fifthSubtitle: String = "Альтернативная музыка 90-х"
        static let fifthGenre: String = "Apple Music 90-е"
        
        static let sixthImage: String = "sixth_playlist"
        static let sixthTitle: String = "СЛУШАЙТЕ ПРЯМО СЕЙЧАС"
        static let sixthSubtitle: String = "R&B 90-x"
        static let sixthGenre: String = "Apple Music 90-e"
        
    }
    
    //Tracks constants
    enum TracksModel {
        static let firstImage: String = "first_tracks"
        static let firstTitle: String = "Поп-панк"
        static let firstGenre: String = "Apple Music Панк"
        
        static let secondImage: String = "second_tracks"
        static let secondTitle: String = "Riot Grrrl"
        static let secondGenre: String = "Apple Music Панк"
        
        static let thirdImage: String = "third_tracks"
        static let thirdTitle: String = "Дрма-н-бэйс"
        static let thirdGenre: String = "Apple Music Электроника"
        
        static let fourthImage: String = "fourth_tracks"
        static let fourthTitle: String = "Прогрессив хаус"
        static let fourthGenre: String = "Apple Music Танцевальная"
        
        static let fifthImage: String = "fifth_tracks"
        static let fifthTitle: String = "Ностальгия по рейву"
        static let fifthGenre: String = "Apple Music Танцевальная"
        
        static let sixthImage: String = "sixth_tracks"
        static let sixthTitle: String = "Поп-музыка"
        static let sixthGenre: String = "Apple Music Поп"
    }
    
    //Station contents
    enum StationModel {
        static let firstImage: String = "first_station"
        static let firstTitle: String = "Золотая эра хип-хопа"
        static let firstGenre: String = "Станция Apple Music"
        
        static let secondImage: String = "second_station"
        static let secondTitle: String = "Хиты 90-х"
        static let secondGenre: String = "Станция Apple Music"
        
        static let thirdImage: String = "third_station"
        static let thirdTitle: String = "Классика альтренативы"
        static let thirdGenre: String = "Станция Apple Music"
        
        static let fourthImage: String = "fourth_station"
        static let fourthTitle: String = "R&B хиты"
        static let fourthGenre: String = "Станция Apple Music"
        
        static let fifthImage: String = "fifth_station"
        static let fifthTitle: String = "Панк"
        static let fifthGenre: String = "Станция Apple Music"
        
        static let sixthImage: String = "sixth_station"
        static let sixthTitle: String = "Классика инди"
        static let sixthGenre: String = "Станция Apple Music"
    }
    
    //Constants for category view
    enum SearchCategoriesView {
        static let title = "Поиск по категориям"
    }
}

//MARK: - SFSymbols
enum SFSymbols {
    //Playing View
    static let playButton: String = "play.fill"
    static let forwardButton: String = "forward.fill"
    
    //Tab bar
    static let mediaLibraryIcon: String = "music.note.list"
    static let radioIcon: String = "dot.radiowaves.left.and.right"
    static let searchIcon: String = "magnifyingglass"
    
    //List model
    static let playlists: String = "music.note.list"
    static let artists: String = "music.mic"
    static let albums: String = "rectangle.stack"
    static let tvAndFilms: String = "tv"
    static let clips: String = "music.note.tv"
    static let genres: String = "guitars"
    static let collections: String = "person.crop.rectangle.stack"
    static let authors: String = "music.quarternote.3"
    static let download: String = "arrow.down.circle"
    static let homeCollection: String = "music.note.house"
}
