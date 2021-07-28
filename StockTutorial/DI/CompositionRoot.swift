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
        
        let mainCoordinator: MainCoordinator = .init(dependency: .init(stockListControllerFactory: stockListControllerFactory))
        return .init(mainCoordinator: mainCoordinator)
    }
    
}
