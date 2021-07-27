struct AppDependency {
    
    let coordinator: Coordinator

}

extension AppDependency {
    
    static func reslove() -> AppDependency {
        let coordinator: Coordinator = .init()
        return .init(coordinator: coordinator)
    }
    
}
