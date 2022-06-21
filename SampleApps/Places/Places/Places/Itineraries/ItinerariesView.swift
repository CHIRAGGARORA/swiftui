//
//  ItinerariesView.swift
//  Places
//
//  Created by jrasmusson on 2022-06-21.
//

import SwiftUI

struct ItinerariesView: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(modelData.itineraries) { itinerary in
                    NavigationLink(value: itinerary) {
                        ItineraryCard(itinerary: itinerary)
                            .padding()
                    }
                }
            }
            .navigationTitle("Itineraries")
            .navigationDestination(for: Itinerary.self) { item in
                ItineraryDetail()
            }
        }
    }
}

struct ItinerariesView_Previews: PreviewProvider {
    static var previews: some View {
        ItinerariesView()
            .preferredColorScheme(.dark)
            .environmentObject(ModelData())
    }
}
