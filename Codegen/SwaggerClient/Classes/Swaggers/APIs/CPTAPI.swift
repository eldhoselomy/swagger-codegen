//
// CooeyAPIClient
// CPTAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CPTAPI {
    /**

     - parameter codeId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func procedureById(codeId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        procedureByIdWithRequestBuilder(codeId: codeId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/procedural/codes/{codeId}
     
     - parameter codeId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func procedureByIdWithRequestBuilder(codeId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/procedural/codes/{codeId}"
        let codeIdPreEscape = "\(codeId)"
        let codeIdPostEscape = codeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{codeId}", with: codeIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter category: (path)  
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func proceduresByCategory(category: String, offset: Int64? = nil, limit: Int? = nil, completion: @escaping ((_ data: PagedResultProcedureCodeResponseDTO?,_ error: Error?) -> Void)) {
        proceduresByCategoryWithRequestBuilder(category: category, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/procedural/category/{category}
     - examples: [{contentType=application/json, example={
  "result" : [ {
    "code" : "code",
    "description" : "description",
    "id" : "id",
    "category" : "category",
    "status" : "status"
  }, {
    "code" : "code",
    "description" : "description",
    "id" : "id",
    "category" : "category",
    "status" : "status"
  } ],
  "offset" : 6,
  "totalCount" : 0
}}]
     
     - parameter category: (path)  
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)

     - returns: RequestBuilder<PagedResultProcedureCodeResponseDTO> 
     */
    open class func proceduresByCategoryWithRequestBuilder(category: String, offset: Int64? = nil, limit: Int? = nil) -> RequestBuilder<PagedResultProcedureCodeResponseDTO> {
        var path = "/ehealth/v2/procedural/category/{category}"
        let categoryPreEscape = "\(category)"
        let categoryPostEscape = categoryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{category}", with: categoryPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PagedResultProcedureCodeResponseDTO>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
