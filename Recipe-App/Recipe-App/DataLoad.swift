//
//  DataLoad.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 18.01.2023.
//

import Foundation

import Foundation

public class DataLoad {
    
    @Published var ingredients = [Ingredients]()
    @Published var recipes = [Recipes]()
    
    let apikey = "868fc855c0ec483fab14790f7f46239a"
    
    init() {
        loadIngredientsData()
    }
    func loadIngredientsData () {
        if let fileLocation = Bundle.main.url(forResource: "ingredients", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Ingredients].self, from: data)
                
                self.ingredients = jsonData
            } catch {
                print(error)
            }
        }
        
        func loadRecipes(parametrs : [String : String], result: @escaping ((([Recipes])?) -> Void))  {
            var components = URLComponents(string: "https://api.spoonacular.com/recipes/findByIngredients?apiKey=\(apikey)")!
            components.queryItems = parametrs.map({ (key, value) in
                URLQueryItem(name: key, value: value)
            })
            components.percentEncodedQuery = components.percentEncodedPath.replacingOccurrences(of: "+", with: "%2B")
            let request = URLRequest(url: components.url!)
//            let task = URLSessionTask.
        }
    }
}
