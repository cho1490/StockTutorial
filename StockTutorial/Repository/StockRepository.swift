import Combine

protocol StockRepository {
    func fetchStocksPublisher(keywords: String) -> AnyPublisher<StockResult, Error>
    func fetchTimeSeriesPublisher(keywords: String) -> AnyPublisher<TimeSeriesMonthlyAdjusted, Error>
}
