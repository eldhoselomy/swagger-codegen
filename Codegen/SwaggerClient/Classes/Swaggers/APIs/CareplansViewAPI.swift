//
// CooeyAPIClient
// CareplansViewAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CareplansViewAPI {
    /**

     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getActionItemsHistory(patientId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: [ActionItem]?,_ error: Error?) -> Void)) {
        getActionItemsHistoryWithRequestBuilder(patientId: patientId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/careplanview/patients/{patientId}/actionItems
     - examples: [{contentType=application/json, example=[ {
  "notes" : "notes",
  "patientLatitude" : 2.027123023002322,
  "patientId" : "patientId",
  "latitude" : 7.061401241503109,
  "title" : "title",
  "type" : "type",
  "ownerId" : "ownerId",
  "createdOn" : 0,
  "archived" : false,
  "scheduledOn" : 2,
  "permissions" : "permissions",
  "contextType" : "contextType",
  "startTime" : 1,
  "id" : "id",
  "state" : "state",
  "patientLongitude" : 5.962133916683182,
  "longitude" : 9.301444243932576,
  "patientName" : "patientName",
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "postAction" : "postAction",
  "updatedOn" : 6,
  "completed" : false,
  "parentType" : "CAREPLAN",
  "completedEntityId" : "completedEntityId",
  "completedOn" : 5,
  "tenantId" : "tenantId",
  "endTime" : 3,
  "applicationId" : "applicationId",
  "parameters" : "parameters",
  "interventionId" : "interventionId",
  "completedBy" : "completedBy"
}, {
  "notes" : "notes",
  "patientLatitude" : 2.027123023002322,
  "patientId" : "patientId",
  "latitude" : 7.061401241503109,
  "title" : "title",
  "type" : "type",
  "ownerId" : "ownerId",
  "createdOn" : 0,
  "archived" : false,
  "scheduledOn" : 2,
  "permissions" : "permissions",
  "contextType" : "contextType",
  "startTime" : 1,
  "id" : "id",
  "state" : "state",
  "patientLongitude" : 5.962133916683182,
  "longitude" : 9.301444243932576,
  "patientName" : "patientName",
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "postAction" : "postAction",
  "updatedOn" : 6,
  "completed" : false,
  "parentType" : "CAREPLAN",
  "completedEntityId" : "completedEntityId",
  "completedOn" : 5,
  "tenantId" : "tenantId",
  "endTime" : 3,
  "applicationId" : "applicationId",
  "parameters" : "parameters",
  "interventionId" : "interventionId",
  "completedBy" : "completedBy"
} ]}]
     
     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<[ActionItem]> 
     */
    open class func getActionItemsHistoryWithRequestBuilder(patientId: String, xAuthToken: String? = nil) -> RequestBuilder<[ActionItem]> {
        var path = "/ehealth/v2/careplanview/patients/{patientId}/actionItems"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ActionItem]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter careplanId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getActionItemsWithVitalObject(patientId: String, xAuthToken: String? = nil, careplanId: String? = nil, completion: @escaping ((_ data: [ActionItemResponseDTO]?,_ error: Error?) -> Void)) {
        getActionItemsWithVitalObjectWithRequestBuilder(patientId: patientId, xAuthToken: xAuthToken, careplanId: careplanId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/careplanview/patients/{patientId}/actionItems-with-vitals
     - examples: [{contentType=application/json, example=[ {
  "notes" : "notes",
  "patientLatitude" : 2.027123023002322,
  "patientId" : "patientId",
  "latitude" : 7.061401241503109,
  "title" : "title",
  "type" : "type",
  "ownerId" : "ownerId",
  "createdOn" : 0,
  "archived" : false,
  "scheduledOn" : 2,
  "permissions" : "permissions",
  "contextType" : "contextType",
  "startTime" : 1,
  "id" : "id",
  "state" : "state",
  "patientLongitude" : 5.962133916683182,
  "longitude" : 9.301444243932576,
  "patientName" : "patientName",
  "assignerName" : "assignerName",
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "postAction" : "postAction",
  "updatedOn" : 6,
  "completed" : false,
  "parentType" : "CAREPLAN",
  "completedEntityId" : "completedEntityId",
  "completedOn" : 5,
  "tenantId" : "tenantId",
  "endTime" : 3,
  "applicationId" : "applicationId",
  "parameters" : "parameters",
  "interventionId" : "interventionId",
  "completedBy" : "completedBy"
}, {
  "notes" : "notes",
  "patientLatitude" : 2.027123023002322,
  "patientId" : "patientId",
  "latitude" : 7.061401241503109,
  "title" : "title",
  "type" : "type",
  "ownerId" : "ownerId",
  "createdOn" : 0,
  "archived" : false,
  "scheduledOn" : 2,
  "permissions" : "permissions",
  "contextType" : "contextType",
  "startTime" : 1,
  "id" : "id",
  "state" : "state",
  "patientLongitude" : 5.962133916683182,
  "longitude" : 9.301444243932576,
  "patientName" : "patientName",
  "assignerName" : "assignerName",
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "postAction" : "postAction",
  "updatedOn" : 6,
  "completed" : false,
  "parentType" : "CAREPLAN",
  "completedEntityId" : "completedEntityId",
  "completedOn" : 5,
  "tenantId" : "tenantId",
  "endTime" : 3,
  "applicationId" : "applicationId",
  "parameters" : "parameters",
  "interventionId" : "interventionId",
  "completedBy" : "completedBy"
} ]}]
     
     - parameter patientId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter careplanId: (query)  (optional)

     - returns: RequestBuilder<[ActionItemResponseDTO]> 
     */
    open class func getActionItemsWithVitalObjectWithRequestBuilder(patientId: String, xAuthToken: String? = nil, careplanId: String? = nil) -> RequestBuilder<[ActionItemResponseDTO]> {
        var path = "/ehealth/v2/careplanview/patients/{patientId}/actionItems-with-vitals"
        let patientIdPreEscape = "\(patientId)"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "careplanId": careplanId
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ActionItemResponseDTO]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCareplansForTenant(tenantId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getCareplansForTenantWithRequestBuilder(tenantId: tenantId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/careplanview/patients/{tenantId}
     
     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func getCareplansForTenantWithRequestBuilder(tenantId: String, xAuthToken: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/careplanview/patients/{tenantId}"
        let tenantIdPreEscape = "\(tenantId)"
        let tenantIdPostEscape = tenantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tenantId}", with: tenantIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
