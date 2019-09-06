import UIKit

enum StatusCode: Int{
    case success = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

func prettyPrint(someStatus: StatusCode) -> String{
    
    switch someStatus {
        
    case .success:
        return "\(someStatus.rawValue): Success"
    case .unauthorized:
        return "\(someStatus.rawValue): Unauthorized"
    case .forbidden:
        return "\(someStatus.rawValue): Forbidden"
    case .notFound:
        return "\(someStatus.rawValue): Not Found"
        
    }
    
}

prettyPrint(someStatus: .success)
prettyPrint(someStatus: .unauthorized)
prettyPrint(someStatus: .forbidden)
prettyPrint(someStatus: .notFound)
