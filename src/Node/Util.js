"use strict";

// module Node.Util

var util = require('util');

exports.debuglog = function (key) {
  return function (msg) {
    return function (params) {
      return function () {
	return util.debuglog(key).apply(msg, params);
      };
    };
  };
};

exports.format = function (format) {
  return function (params) {
    return util.format.apply(format, params);
  };
};

exports.log = function (msg) {
  return function () {
    return util.log(msg);
  };
};

exports.inspect = function (a) {
  return function (opts) {
    return function () {
      return util.inspect(a, opts);
    };
  };
};
