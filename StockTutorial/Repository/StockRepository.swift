import Combine

protocol StockRepository {
    func fetchStocksPublisher(keywords: String) -> AnyPublisher<StockResult, Error>
}
