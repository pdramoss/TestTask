//
//  NetworkMonitor.swift
//  TestTask
//
//  Created by Pedro Ramos on 22/03/25.
//

import Observation
import Network

protocol NetworkMonitorProtocol {
    var hasNetworkConnection: Bool { get set }
    var isUsingMobileConnection: Bool { get set }
    
    func execute() -> Bool
}

@Observable
final class NetworkMonitor: NetworkMonitorProtocol {
    var hasNetworkConnection: Bool = true
    var isUsingMobileConnection: Bool = false
    
    private let networkMonitor: NWPathMonitor
    private let queue: DispatchQueue
    
    init() {
        networkMonitor = NWPathMonitor()
        queue = DispatchQueue.global(qos: .background)
        networkMonitor.pathUpdateHandler = { [weak self] path in
            self?.hasNetworkConnection = path.status == .satisfied && !path.availableInterfaces.isEmpty
            self?.isUsingMobileConnection = path.usesInterfaceType(.cellular)
        }
        
        networkMonitor.start(queue: self.queue)
    }
    
    func execute() -> Bool {
        hasNetworkConnection
    }
}
