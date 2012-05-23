#!/usr/bin/env node
/**
 * BuyVM Stock
 * @author: cfddream@gmail.com
 * @date: 14:18:42 05/19/2012
 * 
 * Usage:
 * ./buyvmstock.js
 */

var request = require('http').request;

var buffer = [];
var has = 0;

var options = {
  host: 'www.doesbuyvmhavestock.com',
  port: 80,
  path: '/automation.json',
  method: 'GET'
};

var req = request(options, function (res) {
  res.setEncoding('utf8');
  res.on('data', function (chunk) {
    buffer.push(chunk);
  });

  res.on('end', function () {
    buffer = JSON.parse(buffer.join(''));
    buffer.forEach(function (v, i) {
      if (v.qty) {
        console.log(v.name + ' has ' + v.qtv + ' \n');
      } else {
        has^1 && (has = 1);
      }
    });

    if (has&1) {
      console.log('nothing.\n');
    }
  });
}).end();
