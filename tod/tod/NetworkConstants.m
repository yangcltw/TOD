//
//  NetworkConstants.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


//http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=bf073841-c734-49bf-a97f-3757a6013812

NSString *const RequestProtocal = @"http";
NSString *const RequestBaseUrl = @"data.taipei";
NSString *const RequestPath = @"/opendata/datalist/apiAccess";

// key of query string
NSString *const QStringKeyScope = @"scope";
NSString *const QStringKeyRid = @"rid";

// value of query string for taipei park attraction
NSString *const QStringValueScope = @"resourceAquire";
NSString *const QStringParkValueRid = @"bf073841-c734-49bf-a97f-3757a6013812";
