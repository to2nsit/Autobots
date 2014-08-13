(function(){

  var module = angular.module('apiService', ['ngResource']);

  module.factory('Api', [ '$resource',   
    function($resource) {
      return {
        Facebook: $resource('/api/v1/facebooks/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
        Twitter: $resource('/api/v1/twitters/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
        Instagram: $resource('/api/v1/instagrams/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
        Ping: $resource('/api/v1/pings/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
        Speedtest: $resource('/api/v1/speedtests/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
        Youtube: $resource('/api/v1/youtubes/:collectionCtrl:id/:memberCtrl', {
                    id: '@id',
                    collectionCtrl: '@collectionCtrl',
                    memberCtrl: '@memberCtrl'
                  }, {
                    index: {
                      method: 'GET',
                      isArray: true,
                      responseType: 'json'
                    },
                    metric: {
                      method: 'GET',
                      params: {
                        collectionCtrl: 'metric'
                      },
                      isArray: true
                    }
                  }),
      }// end return
    } // end function
  ]); // end module

  // module.factory('Twitter', [ '$resource', 
  //   function($resource) {
  //     return $resource('/api/v1/twitters/:collectionCtrl:id/:memberCtrl', {
  //       id: '@id',
  //       collectionCtrl: '@collectionCtrl',
  //       memberCtrl: '@memberCtrl'
  //     }, {
  //       index: {
  //         method: 'GET',
  //         isArray: true,
  //         responseType: 'json'
  //       },
  //       metric: {
  //         method: 'GET',
  //         params: {
  //           collectionCtrl: 'metric'
  //         },
  //         isArray: true
  //       }
  //     });
  //   } // end function
  // ]); // end module

  // module.factory('Facebook', [ '$resource', 
  //   function($resource) {
  //     return $resource('/api/v1/facebooks/:collectionCtrl:id/:memberCtrl', {
  //       id: '@id',
  //       collectionCtrl: '@collectionCtrl',
  //       memberCtrl: '@memberCtrl'
  //     }, {
  //       index: {
  //         method: 'GET',
  //         isArray: true,
  //         responseType: 'json'
  //       },
  //       metric: {
  //         method: 'GET',
  //         params: {
  //           collectionCtrl: 'metric'
  //         },
  //         isArray: true
  //       }
  //     });
  //   } // end function
  // ]); // end module





  // module.factory('Instagram', [ '$resource', 
  //   function($resource) {
  //     return $resource('/api/v1/instagrams/:collectionCtrl:id/:memberCtrl', {
  //       id: '@id',
  //       collectionCtrl: '@collectionCtrl',
  //       memberCtrl: '@memberCtrl'
  //     }, {
  //       index: {
  //         method: 'GET',
  //         isArray: true,
  //         responseType: 'json'
  //       },
  //       metric: {
  //         method: 'GET',
  //         params: {
  //           collectionCtrl: 'metric'
  //         },
  //         isArray: true
  //       }
  //     });
  //   } // end function
  // ]); // end module

}).call(this)
