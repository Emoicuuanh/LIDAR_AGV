#!/usr/bin/env python
import rospy
from visualization_msgs.msg import MarkerArray, Marker
from std_msgs.msg import ColorRGBA
from collections import defaultdict

class ConstraintFilterNode:
    def __init__(self):
        rospy.init_node('constraint_filter_node')

        self.keep_middle = rospy.get_param('~keep_middle', 3)  # Số lượng điểm giữa muốn giữ
        self.input_topic = rospy.get_param('~input_topic', '/constraint_list')
        self.output_topic = rospy.get_param('~output_topic', '/constraint_list_filtered')

        self.sub = rospy.Subscriber(self.input_topic, MarkerArray, self.callback, queue_size=1)
        self.pub = rospy.Publisher(self.output_topic, MarkerArray, queue_size=1)

        rospy.loginfo(f"[constraint_filter_node] Subscribed to: {self.input_topic}")
        rospy.loginfo(f"[constraint_filter_node] Publishing to: {self.output_topic}")

    def color_key(self, color):
        """ Gom nhóm theo màu, làm tròn để tránh lỗi float """
        return (
            round(color.r * 10),
            round(color.g * 10),
            round(color.b * 10),
            round(color.a * 10)
        )

    def filter_group(self, group):
        """ Giữ lại đầu, cuối, và một vài điểm giữa """
        n = len(group)
        if n == 0:
            return []

        indices = set()
        indices.add(0)
        indices.add(n - 1)

        if n > 2 and self.keep_middle > 0:
            step = max(n // (self.keep_middle + 1), 1)
            for i in range(1, self.keep_middle + 1):
                idx = i * step
                if idx < n - 1:
                    indices.add(idx)

        return [group[i] for i in sorted(indices)]

    def callback(self, msg):
        grouped = defaultdict(list)

        for marker in msg.markers:
            if len(marker.points) < 2:
                continue
            key = self.color_key(marker.color)
            grouped[key].append(marker)

        filtered = MarkerArray()
        for group in grouped.values():
            filtered.markers.extend(self.filter_group(group))

        self.pub.publish(filtered)

    def spin(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        node = ConstraintFilterNode()
        node.spin()
    except rospy.ROSInterruptException:
        pass
