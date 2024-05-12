//
//  KeywordBubbleDefaultPadding.swift
//  Scaling views to complement text
//
//  Created by Park Sang Wook on 5/12/24.
//

import SwiftUI

struct KeywordBubbleDefaultPadding: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    //ScaleMetric property wrapper를 사용하면, 동적 유형 크기의 현재 값에 따라 비례적으로 크거나 작아짐.
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(.white)
            .padding(paddingWidth)
            .background{
                Capsule()
                    .fill(.purple.opacity(0.75))
            }
    }
}

struct KeywordBubbleDefaultPadding_Previews:PreviewProvider{
    static let keywords = ["chives","fern-lear lavender"]
    static var previews: some View{
        VStack{
            ForEach(keywords,id: \.self){
                word in KeywordBubbleDefaultPadding(keyword: word, symbol: "leaf")
            }
        }
    }
}
