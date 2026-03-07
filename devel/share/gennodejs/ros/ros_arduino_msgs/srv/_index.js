
"use strict";

let DigitalWrite = require('./DigitalWrite.js')
let AnalogWrite = require('./AnalogWrite.js')
let ServoWrite = require('./ServoWrite.js')
let DigitalRead = require('./DigitalRead.js')
let AnalogRead = require('./AnalogRead.js')
let DigitalSetDirection = require('./DigitalSetDirection.js')
let ServoRead = require('./ServoRead.js')

module.exports = {
  DigitalWrite: DigitalWrite,
  AnalogWrite: AnalogWrite,
  ServoWrite: ServoWrite,
  DigitalRead: DigitalRead,
  AnalogRead: AnalogRead,
  DigitalSetDirection: DigitalSetDirection,
  ServoRead: ServoRead,
};
