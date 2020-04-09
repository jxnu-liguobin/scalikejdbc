#!/bin/sh

cd `dirname $0`/..
rm -rf */target

sbt 'set scalaVersion := "2.13.1"' \
  clean \
  "project core" 'set scalaVersion := "2.13.1"' publishSigned \
  "project config" 'set scalaVersion := "2.13.1"' publishSigned \
  "project interpolation-macro" 'set scalaVersion := "2.13.1"' publishSigned \
  "project interpolation" 'set scalaVersion := "2.13.1"' publishSigned \
  "project library" 'set scalaVersion := "2.13.1"' publishSigned \
  "project joda-time" 'set scalaVersion := "2.13.1"' publishSigned \
  "project streams" 'set scalaVersion := "2.13.1"' publishSigned \
  "project syntax-support-macro" 'set scalaVersion := "2.13.1"' publishSigned \
  "project test" 'set scalaVersion := "2.13.1"' publishSigned \
  "project mapper-generator-core" 'set scalaVersion := "2.13.1"' publishSigned \
  'set scalaVersion := "2.12.11"' \
  clean \
  "project core" 'set scalaVersion := "2.12.11"' publishSigned \
  "project config" 'set scalaVersion := "2.12.11"' publishSigned \
  "project interpolation-macro" 'set scalaVersion := "2.12.11"' publishSigned \
  "project interpolation" 'set scalaVersion := "2.12.11"' publishSigned \
  "project library" 'set scalaVersion := "2.12.11"' publishSigned \
  "project joda-time" 'set scalaVersion := "2.12.11"' publishSigned \
  "project streams" 'set scalaVersion := "2.12.11"' publishSigned \
  "project syntax-support-macro" 'set scalaVersion := "2.12.11"' publishSigned \
  "project test" 'set scalaVersion := "2.12.11"' publishSigned \
  "project mapper-generator-core" 'set scalaVersion := "2.12.11"' publishSigned

`dirname $0`/release_sbt_plugins.sh

