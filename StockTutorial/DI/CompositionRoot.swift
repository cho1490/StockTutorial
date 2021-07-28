struct AppDependency {
    
    let mainCoordinator: MainCoordinator

}

extension AppDependency {
    
    static func reslove() -> AppDependency {
        let coordinator: MainCoordinator = .init()
        return .init(mainCoordinator: coordinator)
    }
    
}
