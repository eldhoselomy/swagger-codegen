//
// CooeyAPIClient
// BillingAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class BillingAPI {
    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createInvoice(xAuthToken: String? = nil, body: Billing? = nil, completion: @escaping ((_ data: Billing?,_ error: Error?) -> Void)) {
        createInvoiceWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/billing
     - examples: [{contentType=application/json, example={
  "createdOn" : 0,
  "totalTax" : 5.637376656633329,
  "archived" : false,
  "companyRegistrationNo" : "companyRegistrationNo",
  "amountPaid" : 9.301444243932576,
  "id" : "id",
  "invoiceNo" : "invoiceNo",
  "email" : "email",
  "paymentStatus" : "PAID",
  "grossTotalPrice" : 5.962133916683182,
  "address" : "address",
  "paymentMode" : "CREDIT_CARD",
  "mobile" : "mobile",
  "externalId" : "externalId",
  "active" : false,
  "billDate" : 3,
  "updatedOn" : 6,
  "balanceAmount" : 7.061401241503109,
  "userId" : "userId",
  "totalAmount" : 2.3021358869347655,
  "tenantId" : "tenantId",
  "name" : "name",
  "location" : "location",
  "applicationId" : "applicationId",
  "paymentDate" : 1,
  "productList" : [ {
    "unitPrice" : 1,
    "taxApplied" : [ {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    }, {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    } ],
    "code" : "code",
    "quantity" : 1.2315135367772556,
    "externalId" : "externalId",
    "active" : false,
    "description" : "description",
    "updatedOn" : 7,
    "discountApplied" : 7.386281948385884,
    "createdOn" : 2,
    "totalTax" : 6.84685269835264,
    "archived" : false,
    "totalAmount" : 1.0246457001441578,
    "tenantId" : "tenantId",
    "name" : "name",
    "id" : "id",
    "serviceable" : false,
    "applicationId" : "applicationId"
  }, {
    "unitPrice" : 1,
    "taxApplied" : [ {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    }, {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    } ],
    "code" : "code",
    "quantity" : 1.2315135367772556,
    "externalId" : "externalId",
    "active" : false,
    "description" : "description",
    "updatedOn" : 7,
    "discountApplied" : 7.386281948385884,
    "createdOn" : 2,
    "totalTax" : 6.84685269835264,
    "archived" : false,
    "totalAmount" : 1.0246457001441578,
    "tenantId" : "tenantId",
    "name" : "name",
    "id" : "id",
    "serviceable" : false,
    "applicationId" : "applicationId"
  } ]
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Billing> 
     */
    open class func createInvoiceWithRequestBuilder(xAuthToken: String? = nil, body: Billing? = nil) -> RequestBuilder<Billing> {
        let path = "/ehealth/v2/billing"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Billing>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter userId: (path)  
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateHourlyInvoice(userId: String, start: Int64? = nil, end: Int64? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateHourlyInvoiceWithRequestBuilder(userId: userId, start: start, end: end).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/hourly/csv/{userId}
     
     - parameter userId: (path)  
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func generateHourlyInvoiceWithRequestBuilder(userId: String, start: Int64? = nil, end: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/hourly/csv/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter tenantId: (path)  
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter userType: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateHourlyInvoiceForAll(tenantId: String, start: Int64? = nil, end: Int64? = nil, userType: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateHourlyInvoiceForAllWithRequestBuilder(tenantId: tenantId, start: start, end: end, userType: userType).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/hourly/csv/tenant/{tenantId}
     
     - parameter tenantId: (path)  
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter userType: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func generateHourlyInvoiceForAllWithRequestBuilder(tenantId: String, start: Int64? = nil, end: Int64? = nil, userType: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/hourly/csv/tenant/{tenantId}"
        let tenantIdPreEscape = "\(tenantId)"
        let tenantIdPostEscape = tenantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tenantId}", with: tenantIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON(), 
            "userType": userType
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter userId: (path)  
     - parameter timeTraceId: (path)  
     - parameter userType: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateHourlyInvoice_0(userId: String, timeTraceId: String, userType: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateHourlyInvoice_0WithRequestBuilder(userId: userId, timeTraceId: timeTraceId, userType: userType).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/hourly/invoice/time-trace/{userId}/{timeTraceId}
     
     - parameter userId: (path)  
     - parameter timeTraceId: (path)  
     - parameter userType: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func generateHourlyInvoice_0WithRequestBuilder(userId: String, timeTraceId: String, userType: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/hourly/invoice/time-trace/{userId}/{timeTraceId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let timeTraceIdPreEscape = "\(timeTraceId)"
        let timeTraceIdPostEscape = timeTraceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{timeTraceId}", with: timeTraceIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "userType": userType
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter userId: (path)  
     - parameter userType: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateHourlyInvoice_1(userId: String, userType: String? = nil, start: Int64? = nil, end: Int64? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateHourlyInvoice_1WithRequestBuilder(userId: userId, userType: userType, start: start, end: end).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/hourly/invoice/{userId}
     
     - parameter userId: (path)  
     - parameter userType: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func generateHourlyInvoice_1WithRequestBuilder(userId: String, userType: String? = nil, start: Int64? = nil, end: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/hourly/invoice/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "userType": userType, 
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter billId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateInvoice(billId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateInvoiceWithRequestBuilder(billId: billId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/{billId}
     
     - parameter billId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func generateInvoiceWithRequestBuilder(billId: String) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/{billId}"
        let billIdPreEscape = "\(billId)"
        let billIdPostEscape = billIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{billId}", with: billIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter userType
     */
    public enum UserType_generateProgressCSV: String { 
        case patient = "PATIENT"
        case tenant = "TENANT"
        case guardian = "GUARDIAN"
        case admin = "ADMIN"
        case careTaker = "CARE_TAKER"
        case user = "USER"
        case groupAdmin = "GROUP_ADMIN"
        case tenantAdmin = "TENANT_ADMIN"
    }

    /**

     - parameter userId: (path)  
     - parameter userType: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func generateProgressCSV(userId: String, userType: UserType_generateProgressCSV? = nil, start: Int64? = nil, end: Int64? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        generateProgressCSVWithRequestBuilder(userId: userId, userType: userType, start: start, end: end).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/progress/csv/{userId}
     
     - parameter userId: (path)  
     - parameter userType: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func generateProgressCSVWithRequestBuilder(userId: String, userType: UserType_generateProgressCSV? = nil, start: Int64? = nil, end: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/billing/progress/csv/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "userType": userType?.rawValue, 
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAll(xAuthToken: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getAllWithRequestBuilder(xAuthToken: xAuthToken, offset: offset, limit: limit).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing
     
     - parameter xAuthToken: (header)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)

     - returns: RequestBuilder<Void> 
     */
    open class func getAllWithRequestBuilder(xAuthToken: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<Void> {
        let path = "/ehealth/v2/billing"
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

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter query: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchInvoice(xAuthToken: String? = nil, query: String? = nil, start: Int64? = nil, end: Int64? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        searchInvoiceWithRequestBuilder(xAuthToken: xAuthToken, query: query, start: start, end: end, offset: offset, limit: limit).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /ehealth/v2/billing/search
     
     - parameter xAuthToken: (header)  (optional)
     - parameter query: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 10)

     - returns: RequestBuilder<Void> 
     */
    open class func searchInvoiceWithRequestBuilder(xAuthToken: String? = nil, query: String? = nil, start: Int64? = nil, end: Int64? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<Void> {
        let path = "/ehealth/v2/billing/search"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": query, 
            "start": start?.encodeToJSON(), 
            "end": end?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateInvoice(xAuthToken: String? = nil, body: Billing? = nil, completion: @escaping ((_ data: Billing?,_ error: Error?) -> Void)) {
        updateInvoiceWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /ehealth/v2/billing
     - examples: [{contentType=application/json, example={
  "createdOn" : 0,
  "totalTax" : 5.637376656633329,
  "archived" : false,
  "companyRegistrationNo" : "companyRegistrationNo",
  "amountPaid" : 9.301444243932576,
  "id" : "id",
  "invoiceNo" : "invoiceNo",
  "email" : "email",
  "paymentStatus" : "PAID",
  "grossTotalPrice" : 5.962133916683182,
  "address" : "address",
  "paymentMode" : "CREDIT_CARD",
  "mobile" : "mobile",
  "externalId" : "externalId",
  "active" : false,
  "billDate" : 3,
  "updatedOn" : 6,
  "balanceAmount" : 7.061401241503109,
  "userId" : "userId",
  "totalAmount" : 2.3021358869347655,
  "tenantId" : "tenantId",
  "name" : "name",
  "location" : "location",
  "applicationId" : "applicationId",
  "paymentDate" : 1,
  "productList" : [ {
    "unitPrice" : 1,
    "taxApplied" : [ {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    }, {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    } ],
    "code" : "code",
    "quantity" : 1.2315135367772556,
    "externalId" : "externalId",
    "active" : false,
    "description" : "description",
    "updatedOn" : 7,
    "discountApplied" : 7.386281948385884,
    "createdOn" : 2,
    "totalTax" : 6.84685269835264,
    "archived" : false,
    "totalAmount" : 1.0246457001441578,
    "tenantId" : "tenantId",
    "name" : "name",
    "id" : "id",
    "serviceable" : false,
    "applicationId" : "applicationId"
  }, {
    "unitPrice" : 1,
    "taxApplied" : [ {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    }, {
      "archived" : false,
      "tenantId" : "tenantId",
      "name" : "name",
      "externalId" : "externalId",
      "active" : false,
      "updatedOn" : 3,
      "id" : "id",
      "applicationId" : "applicationId",
      "taxAmount" : 2.027123023002322,
      "createdOn" : 9,
      "percent" : 4.145608029883936
    } ],
    "code" : "code",
    "quantity" : 1.2315135367772556,
    "externalId" : "externalId",
    "active" : false,
    "description" : "description",
    "updatedOn" : 7,
    "discountApplied" : 7.386281948385884,
    "createdOn" : 2,
    "totalTax" : 6.84685269835264,
    "archived" : false,
    "totalAmount" : 1.0246457001441578,
    "tenantId" : "tenantId",
    "name" : "name",
    "id" : "id",
    "serviceable" : false,
    "applicationId" : "applicationId"
  } ]
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Billing> 
     */
    open class func updateInvoiceWithRequestBuilder(xAuthToken: String? = nil, body: Billing? = nil) -> RequestBuilder<Billing> {
        let path = "/ehealth/v2/billing"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Billing>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
