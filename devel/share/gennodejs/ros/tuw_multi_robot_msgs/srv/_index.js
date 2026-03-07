
"use strict";

let StationManagerControlProtocol = require('./StationManagerControlProtocol.js')
let StationManagerStationProtocol = require('./StationManagerStationProtocol.js')
let GetRobotStatus = require('./GetRobotStatus.js')
let requestGoal = require('./requestGoal.js')

module.exports = {
  StationManagerControlProtocol: StationManagerControlProtocol,
  StationManagerStationProtocol: StationManagerStationProtocol,
  GetRobotStatus: GetRobotStatus,
  requestGoal: requestGoal,
};
