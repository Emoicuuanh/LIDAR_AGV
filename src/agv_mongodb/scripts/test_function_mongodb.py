#!/usr/bin/env python
import os
import rospkg

agv_mongodb_dir = os.path.join(
    rospkg.RosPack().get_path("agv_mongodb"), "scripts"
)
if os.path.isdir(agv_mongodb_dir):
    from mongodb import mongodb, LogLevel, MissionStatus

from os.path import expanduser
from bson.json_util import dumps
import json

HOME = expanduser("~")

if __name__ == "__main__":
    db = mongodb("mongodb://coffee:coffee@localhost:27017")
    # db = mongodb("mongodb://localhost:27017/")
    # ret = db.calcWaypoints('6','2','Carto')
    # json_path = os.path.join(agv_mongodb_dir, "waypoints.json")
    # with open(json_path, "w") as f:
    #     f.write(dumps(ret, indent=4, sort_keys=True))
    # print(f"Saved waypoints to {json_path}")
    # Test download file function
    db.downloadFile("PB1", HOME + "/Map/PB1.pbstream", "map", contentType="pbstream")
    # db.downloadYamlMapFile("mkac",  HOME + "/Desktop/map")
    # db.downloadMapImage("xxx", HOME + "/Desktop/map")
    # print(db.downloadMapImage("test", HOME + "/tmp/ros/maps", "png"))
    # db.downloadFile("1", HOME + "/Desktop/map/1.mp3", "sound")
    # db.downloadFiducialMapFile("maptest",  HOME + "/Desktop/map")
    # Test current position function
    # currentPos = db.getCurrentPos(-0.1, -0.1, "map2", 0.5)
    # print(currentPos)
    # currentPos = currentPos if currentPos != "" else "None"
    # print("Current pose: {}".format(currentPos))

    # Test download setting function
    # test = db.downloadSetting("Moving control")
    # getPos = db.getPosCoordinate("1","map2")
    # db.printJson(getPos)
    # db.setCurrentMap("map1")
    # print(db.getCurrentMap())
    # Test calculate waypoint
    # ret = db.calcWaypoint('pose_1', 'pose_2', 'map2')
    # db.printJson(ret)
    # db.printJson(db.getSafety("amr run with cart"))
    # data_dict = db.getQueueMission(curMap="office")
    # json_string = dumps(data_dict, indent=2, sort_keys=True)
    # print(json_string)
    # print(db.loadOdom(["left", "right"]))

    # print(db.saveOdom(["left", "right"], [1, 2]))

    # UWB
    # mycol = db.mapsCollection
    # map_name = "office_01"

    # # Print collection before update
    # for x in mycol.find({"name": map_name}):
    #     print(x)

    # # # Add params
    # # data = {"uwb": {"x_offset": 1, "y_offset": 1, "yaw": 0}}
    # # # mydb.saveUwbTransform(map_name, data)
    # # mydb.saveUwbTransform(map_name, data)

    # # # Print collection after update
    # # for x in mycol.find({"name": map_name}):
    # #     print(x)

    # params = db.loadUwbTransform(map_name)
    # print(params)
