// app/scripts/app.js

  'use strict';

   $(document).foundation();	
  /**
   * @ngdoc overview
   * @name fakeLunchHubApp
   * @description
   * # fakeLunchHubApp
   *
   * Main module of the application.
   */
  var app = angular.module('hrsReleaseApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]);

  app.config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .when('/companies', {
        templateUrl: 'views/companies.html',
        controller: 'CompaniesController'
      })
      .otherwise({
        redirectTo: '/'
      });
  });

  app.factory('Company', ['$resource', function($resource) {
    return $resource('/api/companies/:id.json', null, {
      'update': { method:'PUT' }
    });
  }]);