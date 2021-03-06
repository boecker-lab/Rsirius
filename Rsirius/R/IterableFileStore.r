# Sirius Nightsky Middleware API
#
# Sirius Nightsky Middleware API
#
# OpenAPI spec version: 0.9
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' IterableFileStore Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IterableFileStore <- R6::R6Class(
  'IterableFileStore',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      IterableFileStoreObject <- list()

      IterableFileStoreObject
    },
    fromJSON = function(IterableFileStoreJson) {
      IterableFileStoreObject <- jsonlite::fromJSON(IterableFileStoreJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(IterableFileStoreJson) {
      IterableFileStoreObject <- jsonlite::fromJSON(IterableFileStoreJson)
    }
  )
)
