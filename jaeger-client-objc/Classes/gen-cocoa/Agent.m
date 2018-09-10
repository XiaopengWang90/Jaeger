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

#import "Jaeger.h"

#import "Agent.h"

NSString *AgentErrorDomain = @"AgentErrorDomain";

@interface Agent_emitBatch_args : NSObject <TBase, NSCoding, NSCopying> 

@property (strong, nonatomic) Batch * batch;
@property (assign, nonatomic) BOOL batchIsSet;
- (void) unsetBatch;


- (instancetype) initWithBatch: (Batch *) batch;

@end

@implementation Agent_emitBatch_args

- (instancetype) init
{
  self = [super init];
  if (self)  {
  }
  return self;
}

- (instancetype) initWithBatch: (Batch *) batch
{
  self = [super init];
  if (self)  {
    _batch = batch;
    _batchIsSet = YES;
  }
  return self;
}

- (instancetype) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if (self)   {
    if ([decoder containsValueForKey: @"batch"])
    {
      _batch = [decoder decodeObjectForKey: @"batch"];
      _batchIsSet = YES;
    }
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (_batchIsSet)
  {
    [encoder encodeObject: _batch forKey: @"batch"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ _batchIsSet ? 2654435761 : 0;
  if (_batchIsSet)
  {
    hash = (hash * 31) ^ [_batch hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[Agent_emitBatch_args class]]) {
    return NO;
  }
  Agent_emitBatch_args *other = (Agent_emitBatch_args *)anObject;
  if ((_batchIsSet != other->_batchIsSet) ||
      (_batchIsSet && ((_batch || other->_batch) && ![_batch isEqual:other->_batch]))) {
    return NO;
  }
  return YES;
}

- (instancetype) copyWithZone:(NSZone *)zone
{
  Agent_emitBatch_args * val = [Agent_emitBatch_args new];
  if (_batchIsSet)
  {
    val.batch = [self.batch copy];
  }
  return val;
}

- (void) setBatch: (Batch *) batch {
  _batch = batch;
  _batchIsSet = YES;
}

- (void) unsetBatch {
  _batch = nil;
  _batchIsSet = NO;
}

- (BOOL) read: (id <TProtocol>) inProtocol error: (NSError *__autoreleasing *)__thriftError
{
  NSString * fieldName;
  SInt32 fieldType;
  SInt32 fieldID;

  if (![inProtocol readStructBeginReturningName: NULL error: __thriftError]) return NO;
  while (true)
  {
    if (![inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID error: __thriftError]) return NO;
    if (fieldType == TTypeSTOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TTypeSTRUCT) {
          Batch *fieldValue = [[Batch alloc] init];
          if (![fieldValue read: inProtocol error: __thriftError]) return NO;
          self.batch = fieldValue;
        } else { 
          if (![TProtocolUtil skipType: fieldType onProtocol: inProtocol error: __thriftError]) return NO;
        }
        break;
      default:
        if (![TProtocolUtil skipType: fieldType onProtocol: inProtocol error: __thriftError]) return NO;
        break;
    }
    if (![inProtocol readFieldEnd: __thriftError]) return NO;
  }
  if (![inProtocol readStructEnd: __thriftError]) return NO;
  return YES;
}

- (BOOL) write: (id <TProtocol>) outProtocol error: (NSError *__autoreleasing *)__thriftError {
  if (![outProtocol writeStructBeginWithName: @"Agent_emitBatch_args" error: __thriftError]) return NO;
  if (_batchIsSet) {
    if (_batch != nil) {
      if (![outProtocol writeFieldBeginWithName: @"batch" type: TTypeSTRUCT fieldID: 1 error: __thriftError]) return NO;
      if (![_batch write: outProtocol error: __thriftError]) return NO;
      if (![outProtocol writeFieldEnd: __thriftError]) return NO;
    }
  }
  if (![outProtocol writeFieldStop: __thriftError]) return NO;
  if (![outProtocol writeStructEnd: __thriftError]) return NO;
  return YES;
}

- (BOOL) validate: (NSError *__autoreleasing *)__thriftError {
  // check for required fields
  return YES;
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"Agent_emitBatch_args("];
  [ms appendString: @"batch:"];
  [ms appendFormat: @"%@", _batch];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@interface AgentClient () {

  id<TProtocol> inProtocol;
  id<TProtocol> outProtocol;

}

@end

@implementation AgentClient
- (id) initWithProtocol: (id <TProtocol>) protocol
{
  return [self initWithInProtocol: protocol outProtocol: protocol];
}

- (id) initWithInProtocol: (id <TProtocol>) anInProtocol outProtocol: (id <TProtocol>) anOutProtocol
{
  self = [super init];
  if (self)   {
    inProtocol = anInProtocol;
    outProtocol = anOutProtocol;
  }
  return self;
}

- (BOOL) send_emitBatch: (Batch *) batch error: (NSError *__autoreleasing *)__thriftError
{
  if (![outProtocol writeMessageBeginWithName: @"emitBatch" type: TMessageTypeONEWAY sequenceID: 0 error: __thriftError]) return NO;
  if (![outProtocol writeStructBeginWithName: @"Agent_emitBatch_args" error: __thriftError]) return NO;
  if (batch != nil)  {
    if (![outProtocol writeFieldBeginWithName: @"batch" type: TTypeSTRUCT fieldID: 1 error: __thriftError]) return NO;
    if (![batch write: outProtocol error: __thriftError]) return NO;
    if (![outProtocol writeFieldEnd: __thriftError]) return NO;
  }
  if (![outProtocol writeFieldStop: __thriftError]) return NO;
  if (![outProtocol writeStructEnd: __thriftError]) return NO;
  if (![outProtocol writeMessageEnd: __thriftError]) return NO;
  return YES;
}

- (BOOL) emitBatch: (Batch *) batch error: (NSError *__autoreleasing *)__thriftError
{
  if (![self send_emitBatch : batch error: __thriftError]) return NO;
  if (![[outProtocol transport] flush: __thriftError]) return NO;
  return YES;
}

@end

@interface AgentProcessor () {
  id <Agent> service;
  NSDictionary * methodMap;
}
@end

@implementation AgentProcessor

- (id) initWithAgent: (id <Agent>) aService
{
  self = [super init];
  if (self)   {
    service = aService;
    methodMap = [NSMutableDictionary dictionary];
    {
      SEL s = @selector(process_emitBatch_withSequenceID:inProtocol:outProtocol:error:);
      NSMethodSignature * sig = [self methodSignatureForSelector: s];
      NSInvocation * invocation = [NSInvocation invocationWithMethodSignature: sig];
      [invocation setSelector: s];
      [invocation retainArguments];
      [methodMap setValue: invocation forKey: @"emitBatch"];
    }
  }
  return self;
}

- (id<Agent>) service
{
  return service;
}

- (BOOL) processOnInputProtocol: (id <TProtocol>) inProtocol
                 outputProtocol: (id <TProtocol>) outProtocol
                          error: (NSError *__autoreleasing *)__thriftError
{
  NSString * messageName;
  SInt32 messageType;
  SInt32 seqID;
  if (![inProtocol readMessageBeginReturningName: &messageName
                                       type: &messageType
                                 sequenceID: &seqID
                                      error: __thriftError]) return NO;
  NSInvocation * invocation = [methodMap valueForKey: messageName];
  if (invocation == nil) {
    if (![TProtocolUtil skipType: TTypeSTRUCT onProtocol: inProtocol error: __thriftError]) return NO;
    if (![inProtocol readMessageEnd: __thriftError]) return NO;
    NSError * x = [NSError errorWithDomain: TApplicationErrorDomain
                                      code: TApplicationErrorUnknownMethod
                                  userInfo: @{TApplicationErrorMethodKey: messageName}];
    if (![outProtocol writeMessageBeginWithName: messageName
                                           type: TMessageTypeEXCEPTION
                                     sequenceID: seqID
                                          error: __thriftError]) return NO;
    if (![x write: outProtocol error: __thriftError]) return NO;
    if (![outProtocol writeMessageEnd: __thriftError]) return NO;
    if (![[outProtocol transport] flush: __thriftError]) return NO;
    return YES;
  }
  // NSInvocation does not conform to NSCopying protocol
  NSInvocation * i = [NSInvocation invocationWithMethodSignature: [invocation methodSignature]];
  [i setSelector: [invocation selector]];
  [i setArgument: &seqID atIndex: 2];
  [i setArgument: &inProtocol atIndex: 3];
  [i setArgument: &outProtocol atIndex: 4];
  [i setArgument: &__thriftError atIndex: 5];
  [i setTarget: self];
  [i invoke];
  return YES;
}

- (BOOL) process_emitBatch_withSequenceID: (SInt32) seqID inProtocol: (id<TProtocol>) inProtocol outProtocol: (id<TProtocol>) outProtocol error:(NSError *__autoreleasing *)__thriftError
{
  Agent_emitBatch_args * args = [Agent_emitBatch_args new];
  if (![args read: inProtocol error: __thriftError]) return NO;
  if (![inProtocol readMessageEnd: __thriftError]) return NO;
  BOOL serviceResult = [service emitBatch: [args batch] error: __thriftError];
  if (!serviceResult) return NO;
  return YES;
}
@end

