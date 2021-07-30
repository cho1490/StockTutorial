struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency {
    
    static func reslove() -> AppDependency {
        let stockRepository: StockRepository = StockRepositoryImpl()
        
        let stockListControllerFactory: () -> StockListController = {
            let usecase = StockUseCase(stockRepository: stockRepository)
            let viewModel = StockListViewModel(usecase: usecase)
            return .init(dependency: .init(viewModel: viewModel))
        }
        
        let stockDetailControllerFactory: (Stock) -> StockDetailController = { stock in
            return .init(dependency: .init(stock: stock))
        }
        
        let mainCoordinator: MainCoordinator = .init(dependency: .init(stockListControllerFactory: stockListControllerFactory, stockDetailControllerFactory: stockDetailControllerFactory))
        
        return .init(mainCoordinator: mainCoordinator)
    }
    
}
