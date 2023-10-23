//
//  DataService.swift
//  PhoneBook
//
//  Created by ヒットり on 9/30/23.
//

import Foundation

struct DataService {
    func getFileData() -> AppDataResponse {
        // Get file path to AppData.json
        guard let url = Bundle.main.url(
            forResource: "AppData", withExtension: "json"
        ) else {
            fatalError("Unable to load AppData.json from bundle")
        }
        do {
            // Read the file and turn it into Data
            let data = try Data(contentsOf: url)
            
            // Parse data into Swift instance
            let decoder = JSONDecoder()
            let appData = try decoder.decode(AppDataResponse.self, from: data)
            return appData
        } catch {
            print(error.localizedDescription)
            // Force a crash if something goes wrong when reading the json
            // and parsing it into AppDataResponse
            fatalError(error.localizedDescription)
        }
    }
}
