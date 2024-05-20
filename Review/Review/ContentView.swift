//
//  ContentView.swift
//  Review
//
//  Created by Park Sang Wook on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var friends : [Friend] = [
        Friend(name: "sample name", birthday: .now),
        Friend(name: "sample name2", birthday: Date(timeIntervalSince1970: 0))
    ]
    @State private var newName = ""
    @State private var newDate = Date.now
    var body: some View {
        NavigationStack{
            List(friends, id: \.name){
                friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.year().month().day())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment:.leading,spacing:20){
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date){
                            TextField("name", text:$newName)
                                .textFieldStyle(.roundedBorder)
                        }
                    
                    Button("save"){
                        let newFriend = Friend(name: newName, birthday: newDate)
                        
                        friends.append(newFriend)
                        
                        newName = ""
                        newDate = .now
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
            
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
