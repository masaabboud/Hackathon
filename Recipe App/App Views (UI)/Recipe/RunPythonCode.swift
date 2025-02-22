//
//  RunPythonCode.swift
//  Recipe App
//
//  Created by Annie Z on 2/22/25.
//

import Foundation
import PythonKit

//need to get the user info


func runPythonCode(preferences: [String: Any]) -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("~/Users/annie/Downloads/Hackathon/Hackathon/Recipe App/App/Recipe/")
    let file = Python.import("PythonPlaceholder")
    
    //output will be a json file of the text
    //change the preferences dict into a json string
    guard let preferencesJSON = try? JSONSerialization.data(withJSONObject:preferences) else {
            print("Error when converting preferences to JSON string")
        return Python.None
        }
    
    //can add the other part to change to json string
    
    let response = file.getRecipe()
    print(response)
    return response
}

