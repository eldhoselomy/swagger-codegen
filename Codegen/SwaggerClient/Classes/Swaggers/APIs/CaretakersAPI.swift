//
// CooeyAPIClient
// CaretakersAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CaretakersAPI {
    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter caretakerId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAll(xAuthToken: String? = nil, caretakerId: String? = nil, completion: @escaping ((_ data: [Caretaker]?,_ error: Error?) -> Void)) {
        getAllWithRequestBuilder(xAuthToken: xAuthToken, caretakerId: caretakerId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/caretakers
     - examples: [{contentType=application/json, example=[ {
  "archived" : false,
  "shiftId" : "shiftId",
  "caretakerId" : "caretakerId",
  "tenantId" : "tenantId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "status" : "status"
}, {
  "archived" : false,
  "shiftId" : "shiftId",
  "caretakerId" : "caretakerId",
  "tenantId" : "tenantId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "status" : "status"
} ]}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter caretakerId: (query)  (optional)

     - returns: RequestBuilder<[Caretaker]> 
     */
    open class func getAllWithRequestBuilder(xAuthToken: String? = nil, caretakerId: String? = nil) -> RequestBuilder<[Caretaker]> {
        let path = "/ehealth/v2/caretakers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "caretakerId": caretakerId
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Caretaker]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter caretakerId: (path)  
     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getByUserId(caretakerId: String, userId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: Caretaker?,_ error: Error?) -> Void)) {
        getByUserIdWithRequestBuilder(caretakerId: caretakerId, userId: userId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/caretakers/{caretakerId}/users/{userId}
     - examples: [{contentType=application/json, example={
  "archived" : false,
  "shiftId" : "shiftId",
  "caretakerId" : "caretakerId",
  "tenantId" : "tenantId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "status" : "status"
}}]
     
     - parameter caretakerId: (path)  
     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<Caretaker> 
     */
    open class func getByUserIdWithRequestBuilder(caretakerId: String, userId: String, xAuthToken: String? = nil) -> RequestBuilder<Caretaker> {
        var path = "/ehealth/v2/caretakers/{caretakerId}/users/{userId}"
        let caretakerIdPreEscape = "\(caretakerId)"
        let caretakerIdPostEscape = caretakerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{caretakerId}", with: caretakerIdPostEscape, options: .literal, range: nil)
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Caretaker>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(xAuthToken: String? = nil, body: Caretaker? = nil, completion: @escaping ((_ data: Caretaker?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /ehealth/v2/caretakers
     - examples: [{contentType=application/json, example={
  "archived" : false,
  "shiftId" : "shiftId",
  "caretakerId" : "caretakerId",
  "tenantId" : "tenantId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "id" : "id",
  "applicationId" : "applicationId",
  "createdOn" : 0,
  "userId" : "userId",
  "status" : "status"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Caretaker> 
     */
    open class func updateWithRequestBuilder(xAuthToken: String? = nil, body: Caretaker? = nil) -> RequestBuilder<Caretaker> {
        let path = "/ehealth/v2/caretakers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Caretaker>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
