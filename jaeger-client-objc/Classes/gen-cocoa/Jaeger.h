/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TProtocolFactory.h"
#import "TApplicationError.h"
#import "TProtocolError.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"
#import "TBase.h"
#import "TAsyncTransport.h"
#import "TBaseClient.h"


typedef NS_ENUM(SInt32, TagType) {
  TagTypeSTRING = 0,
  TagTypeDOUBLE = 1,
  TagTypeBOOL = 2,
  TagTypeLONG = 3,
  TagTypeBINARY = 4
};

typedef NS_ENUM(SInt32, SpanRefType) {
  SpanRefTypeCHILD_OF = 0,
  SpanRefTypeFOLLOWS_FROM = 1
};

@interface Tag : NSObject <TBase, NSCoding, NSCopying> 

@property (strong, nonatomic) NSString * key;
@property (assign, nonatomic) BOOL keyIsSet;
- (void) unsetKey;

@property (assign, nonatomic) TagType vType;
@property (assign, nonatomic) BOOL vTypeIsSet;
- (void) unsetVType;

@property (strong, nonatomic) NSString * vStr;
@property (assign, nonatomic) BOOL vStrIsSet;
- (void) unsetVStr;

@property (assign, nonatomic) double vDouble;
@property (assign, nonatomic) BOOL vDoubleIsSet;
- (void) unsetVDouble;

@property (assign, nonatomic) BOOL vBool;
@property (assign, nonatomic) BOOL vBoolIsSet;
- (void) unsetVBool;

@property (assign, nonatomic) SInt64 vLong;
@property (assign, nonatomic) BOOL vLongIsSet;
- (void) unsetVLong;

@property (strong, nonatomic) NSData * vBinary;
@property (assign, nonatomic) BOOL vBinaryIsSet;
- (void) unsetVBinary;


- (instancetype) initWithKey: (NSString *) key vType: (TagType) vType vStr: (NSString *) vStr vDouble: (double) vDouble vBool: (BOOL) vBool vLong: (SInt64) vLong vBinary: (NSData *) vBinary;

@end

@interface Log : NSObject <TBase, NSCoding, NSCopying> 

@property (assign, nonatomic) SInt64 timestamp;
@property (assign, nonatomic) BOOL timestampIsSet;
- (void) unsetTimestamp;

@property (strong, nonatomic) NSMutableArray<Tag *> * fields;
@property (assign, nonatomic) BOOL fieldsIsSet;
- (void) unsetFields;


- (instancetype) initWithTimestamp: (SInt64) timestamp fields: (NSArray<Tag *> *) fields;

@end

@interface SpanRef : NSObject <TBase, NSCoding, NSCopying> 

@property (assign, nonatomic) SpanRefType refType;
@property (assign, nonatomic) BOOL refTypeIsSet;
- (void) unsetRefType;

@property (assign, nonatomic) SInt64 traceIdLow;
@property (assign, nonatomic) BOOL traceIdLowIsSet;
- (void) unsetTraceIdLow;

@property (assign, nonatomic) SInt64 traceIdHigh;
@property (assign, nonatomic) BOOL traceIdHighIsSet;
- (void) unsetTraceIdHigh;

@property (assign, nonatomic) SInt64 spanId;
@property (assign, nonatomic) BOOL spanIdIsSet;
- (void) unsetSpanId;


- (instancetype) initWithRefType: (SpanRefType) refType traceIdLow: (SInt64) traceIdLow traceIdHigh: (SInt64) traceIdHigh spanId: (SInt64) spanId;

@end

@interface Span : NSObject <TBase, NSCoding, NSCopying> 

@property (assign, nonatomic) SInt64 traceIdLow;
@property (assign, nonatomic) BOOL traceIdLowIsSet;
- (void) unsetTraceIdLow;

@property (assign, nonatomic) SInt64 traceIdHigh;
@property (assign, nonatomic) BOOL traceIdHighIsSet;
- (void) unsetTraceIdHigh;

@property (assign, nonatomic) SInt64 spanId;
@property (assign, nonatomic) BOOL spanIdIsSet;
- (void) unsetSpanId;

@property (assign, nonatomic) SInt64 parentSpanId;
@property (assign, nonatomic) BOOL parentSpanIdIsSet;
- (void) unsetParentSpanId;

@property (strong, nonatomic) NSString * operationName;
@property (assign, nonatomic) BOOL operationNameIsSet;
- (void) unsetOperationName;

@property (strong, nonatomic) NSMutableArray<SpanRef *> * references;
@property (assign, nonatomic) BOOL referencesIsSet;
- (void) unsetReferences;

@property (assign, nonatomic) SInt32 flags;
@property (assign, nonatomic) BOOL flagsIsSet;
- (void) unsetFlags;

@property (assign, nonatomic) SInt64 startTime;
@property (assign, nonatomic) BOOL startTimeIsSet;
- (void) unsetStartTime;

@property (assign, nonatomic) SInt64 duration;
@property (assign, nonatomic) BOOL durationIsSet;
- (void) unsetDuration;

@property (strong, nonatomic) NSMutableArray<Tag *> * tags;
@property (assign, nonatomic) BOOL tagsIsSet;
- (void) unsetTags;

@property (strong, nonatomic) NSMutableArray<Log *> * logs;
@property (assign, nonatomic) BOOL logsIsSet;
- (void) unsetLogs;


- (instancetype) initWithTraceIdLow: (SInt64) traceIdLow traceIdHigh: (SInt64) traceIdHigh spanId: (SInt64) spanId parentSpanId: (SInt64) parentSpanId operationName: (NSString *) operationName references: (NSArray<SpanRef *> *) references flags: (SInt32) flags startTime: (SInt64) startTime duration: (SInt64) duration tags: (NSArray<Tag *> *) tags logs: (NSArray<Log *> *) logs;

@end

@interface Process : NSObject <TBase, NSCoding, NSCopying> 

@property (strong, nonatomic) NSString * serviceName;
@property (assign, nonatomic) BOOL serviceNameIsSet;
- (void) unsetServiceName;

@property (strong, nonatomic) NSMutableArray<Tag *> * tags;
@property (assign, nonatomic) BOOL tagsIsSet;
- (void) unsetTags;


- (instancetype) initWithServiceName: (NSString *) serviceName tags: (NSArray<Tag *> *) tags;

@end

@interface Batch : NSObject <TBase, NSCoding, NSCopying> 

@property (strong, nonatomic) Process * process;
@property (assign, nonatomic) BOOL processIsSet;
- (void) unsetProcess;

@property (strong, nonatomic) NSMutableArray<Span *> * spans;
@property (assign, nonatomic) BOOL spansIsSet;
- (void) unsetSpans;


- (instancetype) initWithProcess: (Process *) process spans: (NSArray<Span *> *) spans;

@end

@interface BatchSubmitResponse : NSObject <TBase, NSCoding, NSCopying> 

@property (assign, nonatomic) BOOL ok;
@property (assign, nonatomic) BOOL okIsSet;
- (void) unsetOk;


- (instancetype) initWithOk: (BOOL) ok;

@end

@protocol Collector <NSObject>
- (NSArray<BatchSubmitResponse *> *) submitBatches: (NSArray<Batch *> *) batches error: (NSError *__autoreleasing *)__thriftError;  // throws TException
@end

@interface CollectorClient : TBaseClient <Collector> 
- (id) initWithProtocol: (id <TProtocol>) protocol;
- (id) initWithInProtocol: (id <TProtocol>) inProtocol outProtocol: (id <TProtocol>) outProtocol;
@end

@interface CollectorProcessor : NSObject <TProcessor> 
- (id) initWithCollector: (id <Collector>) service;
- (id<Collector>) service;
@end

FOUNDATION_EXPORT NSString *JaegerErrorDomain;


