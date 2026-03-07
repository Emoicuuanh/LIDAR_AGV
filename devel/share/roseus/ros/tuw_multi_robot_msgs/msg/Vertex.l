;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::Vertex)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'Vertex (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::VERTEX")
  (make-package "TUW_MULTI_ROBOT_MSGS::VERTEX"))

(in-package "ROS")
;;//! \htmlinclude Vertex.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_multi_robot_msgs::Vertex
  :super ros::object
  :slots (_id _valid _path _weight _width _successors _predecessors _layout _direction _special_pose _start_properties _end_properties _traffic_rule ))

(defmethod tuw_multi_robot_msgs::Vertex
  (:init
   (&key
    ((:id __id) 0)
    ((:valid __valid) nil)
    ((:path __path) ())
    ((:weight __weight) 0)
    ((:width __width) 0.0)
    ((:successors __successors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:predecessors __predecessors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:layout __layout) 0)
    ((:direction __direction) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:special_pose __special_pose) nil)
    ((:start_properties __start_properties) "")
    ((:end_properties __end_properties) "")
    ((:traffic_rule __traffic_rule) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _valid __valid)
   (setq _path __path)
   (setq _weight (round __weight))
   (setq _width (float __width))
   (setq _successors __successors)
   (setq _predecessors __predecessors)
   (setq _layout (round __layout))
   (setq _direction __direction)
   (setq _special_pose __special_pose)
   (setq _start_properties (string __start_properties))
   (setq _end_properties (string __end_properties))
   (setq _traffic_rule (string __traffic_rule))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:successors
   (&optional __successors)
   (if __successors (setq _successors __successors)) _successors)
  (:predecessors
   (&optional __predecessors)
   (if __predecessors (setq _predecessors __predecessors)) _predecessors)
  (:layout
   (&optional __layout)
   (if __layout (setq _layout __layout)) _layout)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:special_pose
   (&optional (__special_pose :null))
   (if (not (eq __special_pose :null)) (setq _special_pose __special_pose)) _special_pose)
  (:start_properties
   (&optional __start_properties)
   (if __start_properties (setq _start_properties __start_properties)) _start_properties)
  (:end_properties
   (&optional __end_properties)
   (if __end_properties (setq _end_properties __end_properties)) _end_properties)
  (:traffic_rule
   (&optional __traffic_rule)
   (if __traffic_rule (setq _traffic_rule __traffic_rule)) _traffic_rule)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; bool _valid
    1
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; uint32 _weight
    4
    ;; float32 _width
    4
    ;; uint32[] _successors
    (* 4    (length _successors)) 4
    ;; uint32[] _predecessors
    (* 4    (length _predecessors)) 4
    ;; int32 _layout
    4
    ;; string[] _direction
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _direction)) 4
    ;; bool _special_pose
    1
    ;; string _start_properties
    4 (length _start_properties)
    ;; string _end_properties
    4 (length _end_properties)
    ;; string _traffic_rule
    4 (length _traffic_rule)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; uint32 _weight
       (write-long _weight s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32[] _successors
     (write-long (length _successors) s)
     (dotimes (i (length _successors))
       (write-long (elt _successors i) s)
       )
     ;; uint32[] _predecessors
     (write-long (length _predecessors) s)
     (dotimes (i (length _predecessors))
       (write-long (elt _predecessors i) s)
       )
     ;; int32 _layout
       (write-long _layout s)
     ;; string[] _direction
     (write-long (length _direction) s)
     (dolist (elem _direction)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _special_pose
       (if _special_pose (write-byte -1 s) (write-byte 0 s))
     ;; string _start_properties
       (write-long (length _start_properties) s) (princ _start_properties s)
     ;; string _end_properties
       (write-long (length _end_properties) s) (princ _end_properties s)
     ;; string _traffic_rule
       (write-long (length _traffic_rule) s) (princ _traffic_rule s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _weight
     (setq _weight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32[] _successors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _successors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _successors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _predecessors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predecessors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _predecessors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _layout
     (setq _layout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _direction
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _direction i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _special_pose
     (setq _special_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _start_properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _traffic_rule
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _traffic_rule (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::Vertex :md5sum-) "cecf62a42e6d3f44ea93c3166ac94134")
(setf (get tuw_multi_robot_msgs::Vertex :datatype-) "tuw_multi_robot_msgs/Vertex")
(setf (get tuw_multi_robot_msgs::Vertex :definition-)
      "#################################################################
## A single vertex in a graph
## Each vertex of the same graph must have a unique id.
## Successors and Predecessors must have a common start or end
## point
#################################################################
uint32 id                   # Vertex id
bool valid                  # true if it can be used for planning
geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint
                            #    the first point in the array reprecents the start and the last the endpoint
                            #    this points can also be used by the vehciles local path following algorithm
uint32 weight               # the weight of the vertex (e.g. length of the segment)
float32 width               # fee space next to the vertex
uint32[] successors         # edges to successors
uint32[] predecessors       # edges to predecessor
int32 layout
string[] direction
bool special_pose
string start_properties
string end_properties
string traffic_rule
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tuw_multi_robot_msgs/Vertex "cecf62a42e6d3f44ea93c3166ac94134")


