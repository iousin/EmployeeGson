//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/gson/EmployeeService.java
//

#include "Employee.h"
#include "EmployeeGsonConfig.h"
#include "EmployeeService.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "TypeToken.h"
#include "java/lang/reflect/Type.h"
#include "java/util/List.h"

@interface EmpEmployeeService_1 : GsonTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(EmpEmployeeService_1)

__attribute__((unused)) static void EmpEmployeeService_1_init(EmpEmployeeService_1 *self);

__attribute__((unused)) static EmpEmployeeService_1 *new_EmpEmployeeService_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static EmpEmployeeService_1 *create_EmpEmployeeService_1_init(void);

@interface EmpEmployeeService_2 : GsonTypeToken

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(EmpEmployeeService_2)

__attribute__((unused)) static void EmpEmployeeService_2_init(EmpEmployeeService_2 *self);

__attribute__((unused)) static EmpEmployeeService_2 *new_EmpEmployeeService_2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static EmpEmployeeService_2 *create_EmpEmployeeService_2_init(void);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/employee/gson/EmployeeService.java"


#line 10
@implementation EmpEmployeeService

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 10
- (instancetype)init {
  EmpEmployeeService_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 12
- (EmpEmployee *)employeeFromJsonWithNSString:(NSString *)employeeJson {
  EmpEmployee *emp = [((GsonGson *) nil_chk([((EmpEmployeeGsonConfig *) nil_chk(EmpEmployeeGsonConfig_instance())) getGson])) fromJsonWithNSString:employeeJson withIOSClass:EmpEmployee_class_()];
  return emp;
}

- (NSString *)employeeToJsonWithEmpEmployee:(EmpEmployee *)employee {
  return [((GsonGson *) nil_chk([((EmpEmployeeGsonConfig *) nil_chk(EmpEmployeeGsonConfig_instance())) getGson])) toJsonWithId:employee];
}

- (id<JavaUtilList>)employeesFromJsonWithNSString:(NSString *)employeesJson {
  id<JavaLangReflectType> employeeListType = [new_EmpEmployeeService_1_init() getType];
  id<JavaUtilList> employees = [((GsonGson *) nil_chk([((EmpEmployeeGsonConfig *) nil_chk(EmpEmployeeGsonConfig_instance())) getGson])) fromJsonWithNSString:employeesJson withJavaLangReflectType:employeeListType];
  return employees;
}

- (NSString *)employeesToJsonWithJavaUtilList:(id<JavaUtilList>)employees {
  id<JavaLangReflectType> employeeListType = [new_EmpEmployeeService_2_init() getType];
  return [((GsonGson *) nil_chk([((EmpEmployeeGsonConfig *) nil_chk(EmpEmployeeGsonConfig_instance())) getGson])) toJsonWithId:employees withJavaLangReflectType:employeeListType];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEmpEmployee;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 4, 1, -1, 5, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(employeeFromJsonWithNSString:);
  methods[2].selector = @selector(employeeToJsonWithEmpEmployee:);
  methods[3].selector = @selector(employeesFromJsonWithNSString:);
  methods[4].selector = @selector(employeesToJsonWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "employeeFromJson", "LNSString;", "employeeToJson", "LEmpEmployee;", "employeesFromJson", "(Ljava/lang/String;)Ljava/util/List<Lcom/employee/model/Employee;>;", "employeesToJson", "LJavaUtilList;", "(Ljava/util/List<Lcom/employee/model/Employee;>;)Ljava/lang/String;" };
  static const J2ObjcClassInfo _EmpEmployeeService = { "EmployeeService", "com.employee.gson", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_EmpEmployeeService;
}

@end


#line 10
void EmpEmployeeService_init(EmpEmployeeService *self) {
  NSObject_init(self);
}


#line 10
EmpEmployeeService *new_EmpEmployeeService_init() {
  J2OBJC_NEW_IMPL(EmpEmployeeService, init)
}


#line 10
EmpEmployeeService *create_EmpEmployeeService_init() {
  J2OBJC_CREATE_IMPL(EmpEmployeeService, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EmpEmployeeService)

J2OBJC_NAME_MAPPING(EmpEmployeeService, "com.employee.gson", "Emp")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/employee/gson/EmployeeService.java"


#line 22
@implementation EmpEmployeeService_1

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 22
- (instancetype)init {
  EmpEmployeeService_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LEmpEmployeeService;", "employeesFromJsonWithNSString:", "Lcom/google/gson/reflect/TypeToken<Ljava/util/ArrayList<Lcom/employee/model/Employee;>;>;" };
  static const J2ObjcClassInfo _EmpEmployeeService_1 = { "", "com.employee.gson", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_EmpEmployeeService_1;
}

@end


#line 22
void EmpEmployeeService_1_init(EmpEmployeeService_1 *self) {
  GsonTypeToken_init(self);
}


#line 22
EmpEmployeeService_1 *new_EmpEmployeeService_1_init() {
  J2OBJC_NEW_IMPL(EmpEmployeeService_1, init)
}


#line 22
EmpEmployeeService_1 *create_EmpEmployeeService_1_init() {
  J2OBJC_CREATE_IMPL(EmpEmployeeService_1, init)
}

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/employee/gson/EmployeeService.java"


#line 28
@implementation EmpEmployeeService_2

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 28
- (instancetype)init {
  EmpEmployeeService_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LEmpEmployeeService;", "employeesToJsonWithJavaUtilList:", "Lcom/google/gson/reflect/TypeToken<Ljava/util/ArrayList<Lcom/employee/model/Employee;>;>;" };
  static const J2ObjcClassInfo _EmpEmployeeService_2 = { "", "com.employee.gson", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, 2, -1 };
  return &_EmpEmployeeService_2;
}

@end


#line 28
void EmpEmployeeService_2_init(EmpEmployeeService_2 *self) {
  GsonTypeToken_init(self);
}


#line 28
EmpEmployeeService_2 *new_EmpEmployeeService_2_init() {
  J2OBJC_NEW_IMPL(EmpEmployeeService_2, init)
}


#line 28
EmpEmployeeService_2 *create_EmpEmployeeService_2_init() {
  J2OBJC_CREATE_IMPL(EmpEmployeeService_2, init)
}