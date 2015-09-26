angular.module('starter.controllers', [])

.controller('PlayerCtrl', ($scope) ->
  # With the new view caching in Ionic, Controllers are only called
  # when they are recreated or on app start, instead of every page change.
  # To listen for when this page is active (for example, to refresh data),
  # listen for the $ionicView.enter event:
  #
  #$scope.$on('$ionicView.enter', function(e) {
  #});
)

.controller('SearchCtrl', ($scope, $stateParams, dataService) ->

  $scope.$on '$ionicView.enter', () ->
    $scope.searchQuery = $stateParams.query

    if $scope.searchQuery
      dataService.get 'search/' + $stateParams.query
      .then (response) ->
        data = response.data
        $scope.searchResults = data.items
)


.controller('AccountCtrl', ($scope, $stateParams, dataService) ->
  $scope.settings = {
    enableFriends: true
  };

  dataService.get 'search/' + $stateParams.query
  .then (response) ->
    data = response.data
    $scope.accountDetails = data
);
