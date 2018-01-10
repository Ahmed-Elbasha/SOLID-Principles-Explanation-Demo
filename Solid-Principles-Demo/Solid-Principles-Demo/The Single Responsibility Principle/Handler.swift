//
//  Handler.swift
//  Solid-Principles-Demo
//
//  Created by Ahmed Elbasha on 1/10/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class Handler: NSObject {
    
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let dataBaseHandler: DataBaseHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dataBaseHandler: DataBaseHandler) {
        super.init()
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dataBaseHandler = dataBaseHandler
    }
    
    func handle() {
        let data = apiHandler.requestDataToAPI()
        let array = parseHandler.parse(data: data)
        dataBaseHandler.saveToDataBase(array: array)
    }
}

class APIHandler: NSObject {
    private func requestDataToAPI() -> Data {
        // Send Api request and wait the response.
    }
}

class ParseHandler: NSObject {
    private func parse(data: Data) -> [String] {
        // Parse the data, and create array.
    }
}

class DataBaseHandler: NSObject {
    private func saveToDataBase(array: [String]) {
        // Save the array in a database (CoreData/Realm...)
    }
}
