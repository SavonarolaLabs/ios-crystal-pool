//  MarketsView.swift
//  crystal-pool

import SwiftUI

struct MarketsView: View {
    
    @State private var searchText = ""
    
    var filteredTokens: [Token] {
        if searchText.isEmpty {
            return ergoTokens
        } else {
            return ergoTokens.filter { token in
                token.name.lowercased().contains(searchText.lowercased()) ||
                token.ticker.lowercased().contains(searchText.lowercased())
            }
        }
    }
    var body: some View {
        VStack(spacing: 0) {
            SearchBar(text: $searchText)
                .padding(.horizontal)
            List(filteredTokens) { token in
                HStack{
                    Image(token.id)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    VStack(alignment: .leading) {
                        Text(token.ticker)
                            .font(.headline)
                        Text(token.name)
                            .font(.subheadline)
                    }
                    .padding(.vertical, 5)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Markets")
        }
    }
}

#Preview {
    MarketsView()
}
