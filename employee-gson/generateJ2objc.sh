#!/bin/sh

J2OBJC_HOME=~/ios/j2objc-2.2
PROJECT_DIR=.
JAVA_SOURCE=./src/main/java
OUTPUT_DIR=./employee-gson-ios/EmployeeGson/EmployeeGson
OUTPUT="${PROJECT_DIR}/${OUTPUT_DIR}"

find $OUTPUT_DIR -type f -name '*.h' -not -name 'EmployeeGson.h' -exec rm -f {} +

rm -rf ${OUTPUT_DIR}/*.m

"${J2OBJC_HOME}/j2objc" \
    -d "${OUTPUT}" \
    -use-arc \
    --reflection:all \
    --static-accessor-methods \
    --doc-comments \
    --nullability \
    --prefixes "${PROJECT_DIR}/prefixes.properties" \
    --no-package-directories \
    --mapping "${PROJECT_DIR}/mappings.properties" \
    -g \
    `find ${JAVA_SOURCE} -name '*.java' ! -name 'module-info.java'`;
