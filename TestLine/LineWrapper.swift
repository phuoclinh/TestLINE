//
//  LineWrapper.swift
//
//
//  Created by Linh Luu on 30/05/2023.
//

import Gigya
import LineSDK
import UIKit

class LineWrapper: NSObject, ProviderWrapperProtocol {
    var clientID: String?
    private lazy var lineLogin: LoginManager = LoginManager.shared
    
    override required init() {
        super.init()
    }

    func login(params: [String: Any]?, viewController: UIViewController?,
               completion: @escaping (_ jsonData: [String: Any]?, _ error: String?) -> Void) {
        lineLogin.login(permissions: [.profile/*, .openID, .email*/], in: viewController) {
            result in
            switch result {
            case .success(let loginResult):
                let jsonData = [
                    "accessToken": loginResult.accessToken.value,
                ]
                completion(jsonData, nil)
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }

    func logout() {
        lineLogin.logout { _ in }
    }
}
