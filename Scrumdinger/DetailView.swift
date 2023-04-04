//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Belghit Haron on 4/4/2023.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                    .foregroundColor(Color.blue)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("10 minutes")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("Yellow")
                        .padding(4)
                        .cornerRadius(4)
                }.accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
