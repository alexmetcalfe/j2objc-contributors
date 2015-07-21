//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/metcalfe/service/GitHubServiceImpl.java
//

#ifndef _GitHubServiceImpl_H_
#define _GitHubServiceImpl_H_

#include "GitHubService.h"
#include "J2ObjC_header.h"

@protocol HttpClient;
@protocol JavaUtilList;

/**
 @brief Created by alex on 12/07/15.
 */
@interface GitHubServiceImpl : NSObject < GitHubService >

#pragma mark Public

- (instancetype)initWithHttpClient:(id<HttpClient>)simpleHttpClient;

- (id<JavaUtilList>)contributors;

@end

J2OBJC_EMPTY_STATIC_INIT(GitHubServiceImpl)

FOUNDATION_EXPORT NSString *GitHubServiceImpl_API_URL_;
J2OBJC_STATIC_FIELD_GETTER(GitHubServiceImpl, API_URL_, NSString *)

FOUNDATION_EXPORT void GitHubServiceImpl_initWithHttpClient_(GitHubServiceImpl *self, id<HttpClient> simpleHttpClient);

FOUNDATION_EXPORT GitHubServiceImpl *new_GitHubServiceImpl_initWithHttpClient_(id<HttpClient> simpleHttpClient) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(GitHubServiceImpl)

typedef GitHubServiceImpl ComMetcalfeServiceGitHubServiceImpl;

#endif // _GitHubServiceImpl_H_