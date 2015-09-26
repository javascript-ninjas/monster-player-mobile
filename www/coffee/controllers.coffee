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

.controller('SearchCtrl', ($scope, $stateParams, dataService, $location) ->

  $scope.$on '$ionicView.enter', () ->
    $scope.searchQuery = $stateParams.query

    $scope.submitForm = (query) ->
      $location.path '/tab/search/' + query

    if $scope.searchQuery
      dataService.get 'search/' + $stateParams.query
      .then (response) ->
        data = response.data
        $scope.searchResults = data.items
)

.controller('PlayerCtrl', ($scope, $stateParams, $ionicLoading) ->
  # test URL :
  $scope.audioURL = 'http://www.tonycuffe.com/mp3/cairnomount.mp3'

  $ionicLoading.show
    template: 'loading'

  mediaStatusCallback = (status) ->
    if(status == 1)
      $ionicLoading.show {template: 'Loading...'}
    else
      $ionicLoading.hide()

  media = new Media $scope.audioURL, null, null, mediaStatusCallback

  media.play();
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
