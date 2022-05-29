import SwiftUI

struct ContentView: View {
    @State var selectedView = 1
    
    var body: some View {
        TabView {
            Color.gray
            NavigationView {
                List {
                    NavigationLink("1", destination: NumberView(nbr: 1))
                    NavigationLink("2", destination: NumberView(nbr: 2))
                    NavigationLink("3", destination: NumberView(nbr: 3))
                }
            }
            Color.indigo
            Color.pink
        }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

    }
}

struct NumberView: View {
    let nbr: Int
    
    var body: some View {
        Text(String(nbr))
            .font(.title)
            .fontWeight(.heavy)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
