import Foundation

import SwiftUI

struct SearchBar: UIViewRepresentable {
    @Binding var text: String

    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
}

struct Token: Identifiable {
    var id: String
    var decimals: Int
    var name: String
    var ticker: String
    var project: String?
    var description: String?
    var logoURI: String?
}

let ergoTokens: [Token] = [
    Token(
        id: "0000000000000000000000000000000000000000000000000000000000000000",
        decimals: 2,
        name: "Ergo",
        ticker: "ERG",
        project: "Ergo Blockchain"
    ),
    Token(
        id: "03faf2cb329f2e90d6d23b58d91bbb6c046aa143261cc21f52fbe2824bfcbf04",
        decimals: 2,
        name: "SigmaUSD",
        ticker: "SigUSD",
        project: "Sigma USD",
        description: "Algorithmic stablecoin"
    ),
    Token(
        id: "8b08cdd5449a9592a9e79711d7d79249d7a03c535d17efaee83e216e80a44c4b",
        decimals: 3,
        name: "Rosen",
        ticker: "RSN",
        project: "Rosen Bridge"
    ),
    Token(
        id: "e023c5f382b6e96fbd878f6811aac73345489032157ad5affb84aefd4956c297",
        decimals: 6,
        name: "rsADA",
        ticker: "rsADA",
        project: "Rosen Bridge",
        logoURI: "https://raw.githubusercontent.com/spectrum-finance/token-logos/2dee6788e99d2420a41447139db9afdc4b442948/logos/ergo/token-ada.svg"
    ),
    Token(
        id: "0cd8c9f416e5b1ca9f986a7f10a84191dfb85941619e49e53c0dc30ebf83324b",
        decimals: 0,
        name: "Comet",
        ticker: "COMET",
        description: "Memecoin of the Ergo ecosystem"
    ),
    Token(
        id: "003bd19d0187117f130b62e1bcab0939929ff5c7709f843c5c4dd158949285d0",
        decimals: 0,
        name: "SigmaUSD",
        ticker: "SigRSV",
        project: "Sigma USD",
        description: "Reserve token for Sigma USD"
    ),
    Token(
        id: "d71693c49a84fbbecd4908c94813b46514b18b67a99952dc1e6e4791556de413",
        decimals: 2,
        name: "ergopad",
        ticker: "ergopad",
        description: "The first non-custodial launchpad in the Ergo ecosystem"
    ),
    Token(
        id: "1fd6e032e8476c4aa54c18c1a308dce83940e8f4a28f576440513ed7326ad489",
        decimals: 4,
        name: "Paideia DAO",
        ticker: "Paideia",
        description: "Governance token for the web3 DAO management software suite"
    ),
    Token(
        id: "007fd64d1ee54d78dd269c8930a38286caa28d3f29d27cadcb796418ab15c283",
        decimals: 4,
        name: "Ergo-Lend",
        ticker: "EXLE",
        description: "A person-to-person (P2P) lending platform with easy to use tools to borrow and lend money"
    ),
    Token(
        id: "02f31739e2e4937bb9afb552943753d1e3e9cdd1a5e5661949cb0cef93f907ea",
        decimals: 4,
        name: "Swamp Audio",
        ticker: "Terahertz",
        description: "A layer 1 on chain royalty management platform and DAO media publisher whose main focus is building better tools to connect fans and artists globally."
    ),
    Token(
        id: "00b1e236b60b95c2c6f8007a9d89bc460fc9e78f98b09faec9449007b40bccf3",
        decimals: 4,
        name: "ErgoGames.io",
        ticker: "EGIO",
        description: "Bringing utility and entertainment to the Ergo blockchain",
        logoURI: "https://i.ibb.co/rM43NVy/EGIO.png"
    ),
    Token(
        id: "00bd762484086cf560d3127eb53f0769d76244d9737636b2699d55c56cd470bf",
        decimals: 4,
        name: "TabbyPOS",
        ticker: "EPOS",
        description: "A blockchain payment solution consisting of a hardware POS terminal and software that combines the blockchain and the real business world.",
        logoURI: "https://www.tabbylab.io/upload/tabbyposlogo.png"
    ),
    Token(
        id: "6de6f46e5c3eca524d938d822e444b924dbffbe02e5d34bd9dcd4bbfe9e85940",
        decimals: 0,
        name: "Ogre",
        ticker: "ogre",
        description: "Memecoin of the Ergo ecosystem",
        logoURI: "https://ogre-token.web.app/assets/ogre.png"
    ),
    Token(
        id: "e8b20745ee9d18817305f32eb21015831a48f02d40980de6e849f886dca7f807",
        decimals: 8,
        name: "Flux",
        ticker: "FLUX",
        description: "Decentralised hosting platform",
        logoURI: "https://raw.githubusercontent.com/RunOnFlux/press/master/Flux_Asset_SVG/Flux%20Logo/Symbol/Round%20Symbol/SVG/Flux_symbol_blue-white.svg"
    ),
    Token(
        id: "59ee24951ce668f0ed32bdb2e2e5731b6c36128748a3b23c28407c5f8ccbf0f6",
        decimals: 0,
        name: "Walrus DAO",
        ticker: "WALRUS",
        project: "Walrus DAO",
        description: "Memecoin of the Ergo ecosystem",
        logoURI: "https://i.ibb.co/cFGhM52/download.pnghttps://i.ibb.co/2qfT5TQ/walrus.png"
    ),
    Token(
        id: "18c938e1924fc3eadc266e75ec02d81fe73b56e4e9f4e268dffffcb30387c42d",
        decimals: 4,
        name: "Auction House",
        ticker: "AHT",
        description: "The first open-source NFT marketplace on the Ergo blockchain",
        logoURI: "https://ipfs.io/ipfs/bafkreifehzky75luj77t75kn757bshlvpxo24ith26dexkkmbw3hkx247y"
    ),
    Token(
        id: "01dce8a5632d19799950ff90bca3b5d0ca3ebfa8aaafd06f0cc6dd1e97150e7f",
        decimals: 4,
        name: "CyberVerse",
        ticker: "CYPX",
        description: "CyberVerse is a pixel-based, open-world game."
    ),
    Token(
        id: "9a06d9e545a41fd51eeffc5e20d818073bf820c635e2a9d922269913e0de369d",
        decimals: 6,
        name: "Spectrum Finance Token",
        ticker: "SPF",
        project: "Spectrum Finance",
        description: "Governance and utility token for cross-chain DEX Spectrum Finance"
    ),
    Token(
        id: "089990451bb430f05a85f4ef3bcb6ebf852b3d6ee68d86d78658b9ccef20074f",
        decimals: 6,
        name: "duckpools",
        ticker: "QUACKS",
        description: "A pool based lending platform to facilitate lending and collateralized borrowing of ERG and it's native assets."
    ),
    
        Token(
            id: "ba553573f83c61be880d79db0f4068177fa75ab7c250ce3543f7e7aeb471a9d2",
            decimals: 7,
            name: "$Bass Token",
            ticker: "$bass",
            project: "$Bass",
            description: "Memecoin of the Ergo ecosystem",
            logoURI: "https://cloudflare-ipfs.com/ipfs/bafybeifjq7aaleq2eg4o4vhqsg2zjow6pkbb3upb7vpz6g24r777ikh5ua"
        ),
        Token(
            id: "d1d2ae2ac0456aa43550dd4fda45e4f866d523be9170d3a3e4cab43a83926334",
            decimals: 0,
            name: "GreasyCex",
            ticker: "GreasyCex",
            project: "GreasyCex",
            description: "Baseless Project born for entertainment in support of ERGO",
            logoURI: "https://ergcube.com/uploads/posts/2023-04/gcel1-sp.png"
        ),
        Token(
            id: "fcfca7654fb0da57ecf9a3f489bcbeb1d43b56dce7e73b352f7bc6f2561d2a1b",
            decimals: 8,
            name: "ErgOne",
            ticker: "ErgOne",
            project: "ErgOne",
            description: "Decentralised Marketing Powered by Community",
            logoURI: "https://ergone.io/img/background.png"
        ),
        Token(
            id: "91289d5cefb9d78e3ea248d4e9c5b0e3c3de54f64bfae85c0070580961995262",
            decimals: 0,
            name: "PEPErg",
            ticker: "PEPErg",
            project: "PepeErgo",
            logoURI: "https://raw.githubusercontent.com/spectrum-finance/token-logos/89556e899a5012c8b94d0f6539a7e25ead4bf014/logos/ergo/91289d5cefb9d78e3ea248d4e9c5b0e3c3de54f64bfae85c0070580961995262.svg"
        ),
        Token(
            id: "cbd75cfe1a4f37f9a22eaee516300e36ea82017073036f07a09c1d2e10277cda",
            decimals: 9,
            name: "hodlERG3",
            ticker: "hodlERG3",
            project: "hodlERG 3%",
            logoURI: "https://raw.githubusercontent.com/nautls/nautilus-wallet/ab217de394d435b339135e95c1a8ad26e5049027/public/icons/assets/hodlerg3.svg"
        ),
        Token(
            id: "7ba2a85fdb302a181578b1f64cb4a533d89b3f8de4159efece75da41041537f9",
            decimals: 0,
            name: "GORT",
            ticker: "GORT",
            project: "Gold Oracle Pool",
            description: "Gold Oracle Reward Token"
        ),
        Token(
            id: "52f4544ce8a420d484ece16f9b984d81c23e46971ef5e37c29382ac50f80d5bd",
            decimals: 0,
            name: "AuctionCoin",
            ticker: "AuctionCoin",
            project: "Auction Coin protocol",
            description: "Auction Coin: A fair, decentralized, and free market token distribution protocol",
            logoURI: "https://raw.githubusercontent.com/spectrum-finance/token-logos/master/logos/ergo/52f4544ce8a420d484ece16f9b984d81c23e46971ef5e37c29382ac50f80d5bd.svg"
        ),
        Token(
            id: "00b42b41cb438c41d0139aa8432eb5eeb70d5a02d3df891f880d5fe08670c365",
            decimals: 4,
            name: "Crux Finance",
            ticker: "CRUX",
            project: "Crux Finance",
            description: "Crux Finance Token"
        ),
        Token(
            id: "1465c9b9de602bd75f8f38df83118e2c8b1d5b2f5518514dd1438149053652a8",
            decimals: 6,
            name: "Dark Erdoge",
            ticker: "DErdoge",
            project: "Dark Erdoge",
            logoURI: "https://raw.githubusercontent.com/Maustafat/token-logos/ce714ab4ce73e40e2bf5c2efeca414a1dc571140/logos/ergo/1465c9b9de602bd75f8f38df83118e2c8b1d5b2f5518514dd1438149053652a8.svg"
        ),
        Token(
            id: "6ad70cdbf928a2bdd397041a36a5c2490a35beb4d20eabb5666f004b103c7189",
            decimals: 0,
            name: "rsHOSKY",
            ticker: "rsHOSKY",
            project: "Hosky",
            logoURI: "https://hosky.io/wp-content/uploads/2022/05/Front-768x768.png"
        ),
        Token(
            id: "1e0b4e64499cadd4838b6e4e935b9104a6f80975efe1395b714aac19b67a7ac0",
            decimals: 0,
            name: "Sick Erdoge",
            ticker: "SErdoge",
            project: "Dark Erdoge",
            logoURI: "https://raw.githubusercontent.com/Maustafat/token-logos/96e45de9808f792401365c748b0ff7ae6d56c3e9/logos/ergo/1e0b4e64499cadd4838b6e4e935b9104a6f80975efe1395b714aac19b67a7ac0.svg"
        ),
        Token(
            id: "b0b312cde931c8bbdac0dac5bfd8e2c03bf4611275dc967988c8d15bd5ec20e0",
            decimals: 3,
            name: "Bober",
            ticker: "Bober",
            project: "BoberErgo"
        ),
        Token(
            id: "7a51950e5f548549ec1aa63ffdc38279505b11e7e803d01bcf8347e0123c88b0",
            decimals: 8,
            name: "rsBTC",
            ticker: "rsBTC",
            project: "Rosen Bridge"
        )
    ]

