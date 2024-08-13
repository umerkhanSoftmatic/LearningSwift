import SwiftUI

struct Assignment1: View {
    @State
    var fruits: [String] = ["Emergency Hotlines", "My Journals", "Video Library", "Research tools", "Vital Signs Monitor (Beta)", "Learn.amaze", "Family Photo"]
    @State
    var symbols: [String?] = ["phone", "note", "video", "magnifyingglass", "heart", nil, nil] // Use nil for items without a symbol

    var customColor = Color(red: 106/255, green: 117/255, blue: 164/255) // Custom color
    var defaultColor = Color(red: 240/255, green: 241/255, blue: 243/255) // Default color for other items

    var body: some View {
        VStack {
            // Header
            TopHeaderBar(leftIcon: "arrow.left", title: "Resources Top", rightIcon: "list.triangle", backButtonPressed: { childMessage in
                print("Message from child is \(childMessage)")
            })
            
            // Content
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(fruits.indices, id: \.self) { index in
                        if index == fruits.count - 2 { // Insert dashed line before the last two items
                            DashedLine()
                                .stroke(Color.gray.opacity(0.3), lineWidth: 0.3)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                        }
                        CustomListItem(fruit: fruits[index], symbolName: symbols[index], roundedRectColor: defaultColor)
                            .padding(.horizontal)
                    }
                    
                    HStack {
                        Text("Custom Buttons")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 25)
                            .padding(.top, 15)
                        Spacer()
                    }
                    .padding(.vertical, 5)
                    
                    // Custom button with the same specs as "Video Library" but custom color for the background shape
                    CustomListItem(fruit: "My Custom Buttons", symbolName: "list.triangle", roundedRectColor: customColor, isCustom: true)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Button {
                        self.fruits.append("New Row")
                        self.symbols.append("heart")
                        
                    } label: {
                        Text("click me")
                    }

                }
            }
            .background(Color.white) // Background color for the entire view
        }
    }
}

struct CustomListItem: View {
    var fruit: String
    var symbolName: String?
    var roundedRectColor: Color = Color.gray.opacity(0.05) // Default background color
    var isCustom: Bool = false // Flag to indicate custom item
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            if let symbolName = symbolName {
                Image(systemName: symbolName)
                    .resizable()
                    .foregroundColor(isCustom ? .white : .black)
                    .frame(width: 20.0, height: 18.0)
                    .padding(.leading, 10) // Adds padding to the left of the icon
            }
            
            Text(fruit)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ZStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(Color.white)
                    .frame(width: 40.0, height: 40.0)
                
                Image(systemName: (fruit == "Learn.amaze" || fruit == "Family Photo") ? "arrow.up.right" : "arrow.right")
                    .resizable()
                    .foregroundColor(isCustom ? Color(red: 106/255, green: 117/255, blue: 164/255) : .black)
                    .frame(width: 15.0, height: 15.0)
            }
            Spacer()
        }
        .background(RoundedRectangle(cornerRadius: 50).fill(roundedRectColor))
        .padding(.vertical, 5)
    }
}

struct DashedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let dash: [CGFloat] = [10, 5]
        path.addLines([
            CGPoint(x: rect.minX, y: rect.midY),
            CGPoint(x: rect.maxX, y: rect.midY)
        ])
        path = path.strokedPath(StrokeStyle(lineWidth: 1, dash: dash))
        return path
    }
}

#Preview {
    Assignment1()
}
