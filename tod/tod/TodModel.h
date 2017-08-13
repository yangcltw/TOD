//
//  TodModel.h
//  tod
//
//  Created by Bart Yang on 2017/8/12.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#ifndef TodModel_h
#define TodModel_h

@import JSONModel;


@protocol ResultModel;
@protocol AttractionsModel;

@interface AttractionsModel : JSONModel
@property (nonatomic) NSString *_id;
@property (nonatomic) NSString *ParkName;
@property (nonatomic) NSString *Name;
@property (nonatomic) NSString *YearBuilt;
@property (nonatomic) NSString *OpenTime;
@property (nonatomic) NSString *Image;
@property (nonatomic) NSString *Introduction;
@end

@interface ResultModel : JSONModel
@property (nonatomic) NSInteger offset;
@property (nonatomic) NSInteger limit;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSString *sort;
@property (nonatomic) NSArray <AttractionsModel> *result;
@end

@interface TodModel : JSONModel
@property (nonatomic) NSArray <ResultModel> *result;
@end

#endif /* TodModel_h */
