//
//  CenterDetailView.swift
//  FindCoronaCenter
//
//  Created by 천승희 on 2023/08/17.
//

import SwiftUI
import MapKit

struct CenterDetailView: View {
    var center: Center
    
    var body: some View {
        VStack {
            MapView(coordination: center.coordinate)
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            CenterRow(center: center)
        }
        .navigationTitle(center.facilityName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CenterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let center0 = Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시", lat: "37.1232", lng: "123.234", centerType: .central, phoneNumber: "010-1111-1111")
        
        CenterDetailView(center: center0)
    }
}
