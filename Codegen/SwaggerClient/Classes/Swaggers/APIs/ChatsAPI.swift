//
// CooeyAPIClient
// ChatsAPI.swift
//
// Generated by Eldhose Lomy
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ChatsAPI {
    /**

     - parameter sessionId: (path)  
     - parameter participantId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addParticipant(sessionId: String, participantId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: ChatSession?,_ error: Error?) -> Void)) {
        addParticipantWithRequestBuilder(sessionId: sessionId, participantId: participantId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/chats/sessions/{sessionId}/participants/{participantId}
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId"
}}]
     
     - parameter sessionId: (path)  
     - parameter participantId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<ChatSession> 
     */
    open class func addParticipantWithRequestBuilder(sessionId: String, participantId: String, xAuthToken: String? = nil) -> RequestBuilder<ChatSession> {
        var path = "/ehealth/v2/chats/sessions/{sessionId}/participants/{participantId}"
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let participantIdPreEscape = "\(participantId)"
        let participantIdPostEscape = participantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{participantId}", with: participantIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChatSession>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a message to a session
     
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createMessage(body: ChatMessage? = nil, completion: @escaping ((_ data: ChatMessage?,_ error: Error?) -> Void)) {
        createMessageWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a message to a session
     - POST /ehealth/v2/chats/messages
     - 
     - examples: [{contentType=application/json, example={
  "fromUserId" : "fromUserId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "sessionId" : "sessionId",
  "type" : "type",
  "createdOn" : 0,
  "content" : "content",
  "archived" : false,
  "sentOn" : 1,
  "tenantId" : "tenantId",
  "id" : "id",
  "applicationId" : "applicationId"
}}]
     
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ChatMessage> 
     */
    open class func createMessageWithRequestBuilder(body: ChatMessage? = nil) -> RequestBuilder<ChatMessage> {
        let path = "/ehealth/v2/chats/messages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ChatMessage>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSession(xAuthToken: String? = nil, body: CreateChatSessionRequest? = nil, completion: @escaping ((_ data: ChatSessionResponse?,_ error: Error?) -> Void)) {
        createSessionWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /ehealth/v2/chats/sessions
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "unreadMessageCount" : 5,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId",
  "chatParticipations" : [ {
    "participantId" : "participantId",
    "participantName" : "participantName"
  }, {
    "participantId" : "participantId",
    "participantName" : "participantName"
  } ]
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ChatSessionResponse> 
     */
    open class func createSessionWithRequestBuilder(xAuthToken: String? = nil, body: CreateChatSessionRequest? = nil) -> RequestBuilder<ChatSessionResponse> {
        let path = "/ehealth/v2/chats/sessions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChatSessionResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter sessionId: (path)  
     - parameter participationId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParticipant(sessionId: String, participationId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: ChatSession?,_ error: Error?) -> Void)) {
        deleteParticipantWithRequestBuilder(sessionId: sessionId, participationId: participationId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /ehealth/v2/chats/sessions/{sessionId}/participations/{participationId}
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId"
}}]
     
     - parameter sessionId: (path)  
     - parameter participationId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<ChatSession> 
     */
    open class func deleteParticipantWithRequestBuilder(sessionId: String, participationId: String, xAuthToken: String? = nil) -> RequestBuilder<ChatSession> {
        var path = "/ehealth/v2/chats/sessions/{sessionId}/participations/{participationId}"
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let participationIdPreEscape = "\(participationId)"
        let participationIdPostEscape = participationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{participationId}", with: participationIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChatSession>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Individual Chat Session between two Users
     
     - parameter userId1: (path)  
     - parameter userId2: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIndividualChatSessionsBetweenTwoUsers(userId1: String, userId2: String, completion: @escaping ((_ data: ChatSession?,_ error: Error?) -> Void)) {
        getIndividualChatSessionsBetweenTwoUsersWithRequestBuilder(userId1: userId1, userId2: userId2).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Individual Chat Session between two Users
     - GET /ehealth/v2/chats/sessions/individual/between/{userId1}/{userId2}
     - 
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId"
}}]
     
     - parameter userId1: (path)  
     - parameter userId2: (path)  

     - returns: RequestBuilder<ChatSession> 
     */
    open class func getIndividualChatSessionsBetweenTwoUsersWithRequestBuilder(userId1: String, userId2: String) -> RequestBuilder<ChatSession> {
        var path = "/ehealth/v2/chats/sessions/individual/between/{userId1}/{userId2}"
        let userId1PreEscape = "\(userId1)"
        let userId1PostEscape = userId1PreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId1}", with: userId1PostEscape, options: .literal, range: nil)
        let userId2PreEscape = "\(userId2)"
        let userId2PostEscape = userId2PreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId2}", with: userId2PostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ChatSession>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get Chat messages for session
     
     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter skip: (query)  (optional, default to 0)
     - parameter count: (query)  (optional, default to 50)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessagesForSession(sessionId: String, xAuthToken: String? = nil, skip: Int? = nil, count: Int? = nil, completion: @escaping ((_ data: [ChatMessage]?,_ error: Error?) -> Void)) {
        getMessagesForSessionWithRequestBuilder(sessionId: sessionId, xAuthToken: xAuthToken, skip: skip, count: count).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Chat messages for session
     - GET /ehealth/v2/chats/messages/sessions/{sessionId}
     - 
     - examples: [{contentType=application/json, example=[ {
  "fromUserId" : "fromUserId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "sessionId" : "sessionId",
  "type" : "type",
  "createdOn" : 0,
  "content" : "content",
  "archived" : false,
  "sentOn" : 1,
  "tenantId" : "tenantId",
  "id" : "id",
  "applicationId" : "applicationId"
}, {
  "fromUserId" : "fromUserId",
  "externalId" : "externalId",
  "active" : false,
  "updatedOn" : 6,
  "sessionId" : "sessionId",
  "type" : "type",
  "createdOn" : 0,
  "content" : "content",
  "archived" : false,
  "sentOn" : 1,
  "tenantId" : "tenantId",
  "id" : "id",
  "applicationId" : "applicationId"
} ]}]
     
     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter skip: (query)  (optional, default to 0)
     - parameter count: (query)  (optional, default to 50)

     - returns: RequestBuilder<[ChatMessage]> 
     */
    open class func getMessagesForSessionWithRequestBuilder(sessionId: String, xAuthToken: String? = nil, skip: Int? = nil, count: Int? = nil) -> RequestBuilder<[ChatMessage]> {
        var path = "/ehealth/v2/chats/messages/sessions/{sessionId}"
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "skip": skip?.encodeToJSON(), 
            "count": count?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ChatMessage]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSession(sessionId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: ChatSessionResponse?,_ error: Error?) -> Void)) {
        getSessionWithRequestBuilder(sessionId: sessionId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /ehealth/v2/chats/sessions/{sessionId}
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "unreadMessageCount" : 5,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId",
  "chatParticipations" : [ {
    "participantId" : "participantId",
    "participantName" : "participantName"
  }, {
    "participantId" : "participantId",
    "participantName" : "participantName"
  } ]
}}]
     
     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<ChatSessionResponse> 
     */
    open class func getSessionWithRequestBuilder(sessionId: String, xAuthToken: String? = nil) -> RequestBuilder<ChatSessionResponse> {
        var path = "/ehealth/v2/chats/sessions/{sessionId}"
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChatSessionResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Chat sessions for user
     
     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter skip: (query)  (optional, default to 0)
     - parameter count: (query)  (optional, default to 10000)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSessionsForUser(userId: String, xAuthToken: String? = nil, skip: Int? = nil, count: Int? = nil, completion: @escaping ((_ data: [ChatSessionResponse]?,_ error: Error?) -> Void)) {
        getSessionsForUserWithRequestBuilder(userId: userId, xAuthToken: xAuthToken, skip: skip, count: count).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Chat sessions for user
     - GET /ehealth/v2/chats/sessions/users/{userId}
     - 
     - examples: [{contentType=application/json, example=[ {
  "externalId" : "externalId",
  "active" : false,
  "unreadMessageCount" : 5,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId",
  "chatParticipations" : [ {
    "participantId" : "participantId",
    "participantName" : "participantName"
  }, {
    "participantId" : "participantId",
    "participantName" : "participantName"
  } ]
}, {
  "externalId" : "externalId",
  "active" : false,
  "unreadMessageCount" : 5,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId",
  "chatParticipations" : [ {
    "participantId" : "participantId",
    "participantName" : "participantName"
  }, {
    "participantId" : "participantId",
    "participantName" : "participantName"
  } ]
} ]}]
     
     - parameter userId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter skip: (query)  (optional, default to 0)
     - parameter count: (query)  (optional, default to 10000)

     - returns: RequestBuilder<[ChatSessionResponse]> 
     */
    open class func getSessionsForUserWithRequestBuilder(userId: String, xAuthToken: String? = nil, skip: Int? = nil, count: Int? = nil) -> RequestBuilder<[ChatSessionResponse]> {
        var path = "/ehealth/v2/chats/sessions/users/{userId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "skip": skip?.encodeToJSON(), 
            "count": count?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ChatSessionResponse]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter participantId: (path)  
     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateParticipantLastSeen(participantId: String, sessionId: String, xAuthToken: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateParticipantLastSeenWithRequestBuilder(participantId: participantId, sessionId: sessionId, xAuthToken: xAuthToken).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - PUT /ehealth/v2/chats/sessions/{sessionId}/participants/{participantId}
     
     - parameter participantId: (path)  
     - parameter sessionId: (path)  
     - parameter xAuthToken: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateParticipantLastSeenWithRequestBuilder(participantId: String, sessionId: String, xAuthToken: String? = nil) -> RequestBuilder<Void> {
        var path = "/ehealth/v2/chats/sessions/{sessionId}/participants/{participantId}"
        let participantIdPreEscape = "\(participantId)"
        let participantIdPostEscape = participantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{participantId}", with: participantIdPostEscape, options: .literal, range: nil)
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSession(xAuthToken: String? = nil, body: ChatSession? = nil, completion: @escaping ((_ data: ChatSession?,_ error: Error?) -> Void)) {
        updateSessionWithRequestBuilder(xAuthToken: xAuthToken, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /ehealth/v2/chats/sessions
     - examples: [{contentType=application/json, example={
  "externalId" : "externalId",
  "active" : false,
  "contextId" : "contextId",
  "updatedOn" : 6,
  "recentMessageOn" : 1,
  "ownerId" : "ownerId",
  "type" : "INDIVIDUAL",
  "createdOn" : 0,
  "archived" : false,
  "contextType" : "contextType",
  "tenantId" : "tenantId",
  "name" : "name",
  "id" : "id",
  "applicationId" : "applicationId"
}}]
     
     - parameter xAuthToken: (header)  (optional)
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ChatSession> 
     */
    open class func updateSessionWithRequestBuilder(xAuthToken: String? = nil, body: ChatSession? = nil) -> RequestBuilder<ChatSession> {
        let path = "/ehealth/v2/chats/sessions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Auth-Token": xAuthToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChatSession>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
