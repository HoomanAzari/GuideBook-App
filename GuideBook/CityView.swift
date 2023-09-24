//
//  ContentView.swift
//  GuideBook
//
//  Created by Houman Azari on 2023-09-23.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()       //empty city array
    var dataService = DataService()
    var body: some View {
        
        NavigationStack{
            ScrollView (showsIndicators: false){
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)          //spacing between city cards
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getData()
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
