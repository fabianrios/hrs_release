// app/scripts/controllers/companies.js

'use strict';

/**
 * @ngdoc function
 * @name hrsReleaseApp.controller:GroupsCtrl
 * @description
 * # hrsReleaseApp
 * Controller of the hrsReleaseApp
 */
angular.module('hrsReleaseApp')
  .controller('CompaniesController', ['$scope', 'Company', function ($scope, Company) {
    $scope.companies = Company.show(1);
  }]);
  
