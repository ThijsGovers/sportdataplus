//
//  UserData.swift
//  Sport Data +
//
//  Created by Thijs Govers on 12/06/2023.
//

import SwiftUI
import Foundation


class UserData: ObservableObject{

//Welzijn vragenlijst
    @AppStorage ("slaapKwalliteit") var slaapKwalliteit = ""
    @AppStorage ("spierpijnLoc") var spierpijnLog = ""
    @AppStorage ("ziek") var ziek: Bool = false
    @AppStorage ("geblesseerd") var geblesseerd: Bool = false
    @AppStorage ("overig") var overig = ""
    
    
    //Training log
    
    
    
    //profiel
    @AppStorage ("name") var name = ""
    @AppStorage ("team") var team = ""
    @AppStorage ("leeftijd") var leeftijd = ""
    @AppStorage ("lengte") var lengte = ""
    
    //Privacy sheet
    
    
    //Share sheet
    
}

//Alle data die er gevraagd wordt in de dagelijkste vragenlijst, moet worden opgeslagen in een JSON pakketje, en met de button "opslaan" worden verstuurd naar SDV. Moet de ochtend erna opnieuw worden ingevuld en in een nieuw pakketje worden verstuurd naar SDV.
struct WelzijnData: Codable {
    var slaapkwalliteit : Double
    var vermoeidheid : Double
    var stress : Double
    var algSpierpijn : Double
    var gemoedstoestand : Double
    var rtt : Double
    var spierpijnLoc = ""
    var rustpols : Int
    var gewicht : Int
    var ziek : Bool = false
    var geblesseerd : Bool = false
    var opmerkingen : String = ""
}

struct TrainingLogData: Codable {
    
}
