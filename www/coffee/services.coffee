angular.module('starter.services', [])

.factory('dataService', ($http, $ionicLoading) ->
  get: (service) ->
    $ionicLoading.show
      template: 'loading'

    $http
      method: 'GET',
      url: 'http://172.16.110.205:3000/' + service
    .success () ->
      $ionicLoading.hide()
);
