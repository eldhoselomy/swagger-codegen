//
// CooeyAPIClient
// ServicesAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ServicesAPI {
    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCategory(xAuthToken: String? = nil, body: ServiceCategory? = nil, completion: @escaping ((_ data: ServiceCategory?,_ error: Error?) -> Void)) {
        createCategoryWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/services/categories
     - examples: [{contentType=application/json, example={
  "image" : "image",
  "color" : "color",
  "name" : "name",
  "tenantId" : "tenantId",
  "id" : "id"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ServiceCategory> 
     */
    open class func createCategoryWithRequestBuilder(xAuthToken: String? = nil, body: ServiceCategory? = nil) -> RequestBuilder<ServiceCategory> {
        let path = "/ehealth/v2/services/categories"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ServiceCategory>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createService(xAuthToken: String? = nil, body: Service? = nil, completion: @escaping ((_ data: Service?,_ error: Error?) -> Void)) {
        createServiceWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/services
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Service> 
     */
    open class func createServiceWithRequestBuilder(xAuthToken: String? = nil, body: Service? = nil) -> RequestBuilder<Service> {
        let path = "/ehealth/v2/services"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Service>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter serviceId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteService(serviceId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteServiceWithRequestBuilder(serviceId: serviceId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /ehealth/v2/services/{serviceId}
     
     - parameter serviceId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteServiceWithRequestBuilder(serviceId: String, xAuthToken: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/services/{serviceId}"
        let serviceIdPreEscape = "\(serviceId)"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getServiceCategories(tenantId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: [ServiceCategory]?,_ error: Error?) -> Void)) {
        getServiceCategoriesWithRequestBuilder(tenantId: tenantId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/services/categiories/tenants/{tenantId}
     - examples: [{contentType=application/json, example=[ {
  "image" : "image",
  "color" : "color",
  "name" : "name",
  "tenantId" : "tenantId",
  "id" : "id"
}, {
  "image" : "image",
  "color" : "color",
  "name" : "name",
  "tenantId" : "tenantId",
  "id" : "id"
} ]}]
     
     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<[ServiceCategory]> 
     */
    open class func getServiceCategoriesWithRequestBuilder(tenantId: String, xAuthToken: String? = nil) -> RequestBuilder<[ServiceCategory]> {
        var path = "/ehealth/v2/services/categiories/tenants/{tenantId}"
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

        let requestBuilder: RequestBuilder<[ServiceCategory]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getServices(tenantId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: [Service]?,_ error: Error?) -> Void)) {
        getServicesWithRequestBuilder(tenantId: tenantId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/services/tenants/{tenantId}
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
}, {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
} ]}]
     
     - parameter tenantId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<[Service]> 
     */
    open class func getServicesWithRequestBuilder(tenantId: String, xAuthToken: String? = nil) -> RequestBuilder<[Service]> {
        var path = "/ehealth/v2/services/tenants/{tenantId}"
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

        let requestBuilder: RequestBuilder<[Service]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter categoryId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getServicesByCategoryId(categoryId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: [Service]?,_ error: Error?) -> Void)) {
        getServicesByCategoryIdWithRequestBuilder(categoryId: categoryId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/services/categories/{categoryId}
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
}, {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
} ]}]
     
     - parameter categoryId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<[Service]> 
     */
    open class func getServicesByCategoryIdWithRequestBuilder(categoryId: String, xAuthToken: String? = nil) -> RequestBuilder<[Service]> {
        var path = "/ehealth/v2/services/categories/{categoryId}"
        let categoryIdPreEscape = "\(categoryId)"
        let categoryIdPostEscape = categoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{categoryId}", with: categoryIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Service]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter tenantId: (path)  
     - parameter searchString: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchServices(tenantId: String, searchString: String, xAuthToken: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [Service]?,_ error: Error?) -> Void)) {
        searchServicesWithRequestBuilder(tenantId: tenantId, searchString: searchString, xAuthToken: xAuthToken, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/services/search/{searchString}/tenants/{tenantId}
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
}, {
  "name" : "name",
  "tenantId" : "tenantId",
  "description" : "description",
  "id" : "id",
  "serviceId" : "serviceId",
  "categoryId" : "categoryId",
  "forms" : [ {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  }, {
    "name" : "name",
    "type" : "type",
    "url" : "url"
  } ]
} ]}]
     
     - parameter tenantId: (path)  
     - parameter searchString: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)

     - returns: RequestBuilder<[Service]> 
     */
    open class func searchServicesWithRequestBuilder(tenantId: String, searchString: String, xAuthToken: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<[Service]> {
        var path = "/ehealth/v2/services/search/{searchString}/tenants/{tenantId}"
        let tenantIdPreEscape = "\(tenantId)"
        let tenantIdPostEscape = tenantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tenantId}", with: tenantIdPostEscape, options: .literal, range: nil)
        let searchStringPreEscape = "\(searchString)"
        let searchStringPostEscape = searchStringPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{searchString}", with: searchStringPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Service]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
