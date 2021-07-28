import Combine
import Foundation

class StockRepositoryImpl: StockRepository {
    var apiKey: String = "KIARGZKI1XERCH4L"
    let decoder = JSONDecoder()
    
    func fetchStocksPublisher(keywords: String) -> AnyPublisher<StockResult, Error> {
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(apiKey)"
        
        let url = URL(string: urlString)!
        
        return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }.decode(type: StockResult.self, decoder: decoder).receive(on: RunLoop.main).eraseToAnyPublisher()
    }
}
