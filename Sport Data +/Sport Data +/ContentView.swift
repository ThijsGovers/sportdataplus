//
//  ContentView.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import SwiftUI
import CoreData

enum Tabs : String{
    case profiel
    case feedback
    case home
    case schema
    case vragenlijst
}

struct ContentView: View {
    @StateObject var userData = UserData()
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Black")
                    .ignoresSafeArea(.all)
                
                TabView(selection: $selectedTab){
                    ProfielView()
                        .tabItem{
                            Image(systemName: "person.fill")
                            Text("Profiel")
                        }.tag(Tabs.profiel)
                    
                    FeedbackView()
                        .tabItem{
                            Image(systemName: "note.text")
                            Text("Feedback")
                        }.tag(Tabs.feedback)
                    
                    HomeView()
                        .tabItem{
                            Image(systemName: "house")
                            Text("Home")
                        }.tag(Tabs.home)
                    
                    SchemaView()
                        .tabItem{
                            Image(systemName: "chart.bar.xaxis")
                            Text("Schema")
                        }.tag(Tabs.schema)
                    
                    VragenlijstView()
                        .tabItem{
                            Image(systemName: "list.clipboard.fill")
                            Text("Vragenlijst")
                        }.tag(Tabs.vragenlijst)
                    
                }.accentColor(Color("BlueL"))
                
                }
            }.environmentObject(userData)
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
