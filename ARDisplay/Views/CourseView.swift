//
//  CourseView.swift
//  ARDisplay
//
//  Created by Tuan Nguyen on 15/3/24.
//

import SwiftUI

struct CourseView: View {
    let course: Course
    var body: some View {
        VStack {
            Text(course.name)
                .font(.largeTitle)
            Text(course.content)
            Spacer()
        }.navigationTitle(course.name)
    }
}

#Preview {
    CourseView(course: Course(name: "visionOS", content: "hello content"))
}
