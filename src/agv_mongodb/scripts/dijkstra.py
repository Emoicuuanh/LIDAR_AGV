#!/usr/bin/env python
# -*- coding: utf-8 -*-
import heapq
import os
import sys
import rospkg

common_func_dir = os.path.join(
    rospkg.RosPack().get_path("agv_common_library"), "scripts"
)
if not os.path.isdir(common_func_dir):
    common_func_dir = os.path.join(
        rospkg.RosPack().get_path("agv_common_library"), "release"
    )
sys.path.insert(0, common_func_dir)

from common_function import (
    print_debug,
    print_warn,
    print_error,
    print_info,
)

def dijkstra(graph, start, end):
    heap = [(0, start, [])]
    visited = set()

    while heap:
        (cost, current, path) = heapq.heappop(heap)

        if current in visited:
            continue

        visited.add(current)

        path = path + [current]

        if current == end:
            return path, cost

        for neighbor, weight in graph[current]:
            heapq.heappush(heap, (cost + weight, neighbor, path))

    return None

def build_graph(data):
    graph = {}
    for node in data:
        neighbors = []
        for next_node in node.get('next', []):
            weight = calculate_distance(node, next_node, data)
            neighbors.append((next_node, weight))
        graph[node['name']] = neighbors
    return graph

def calculate_distance(node1, node2, data):
    pos1 = node1['data']['position']

    if isinstance(node2, dict):  # node2 is a full node
        pos2 = node2['data']['position']
    else:  # node2 is a name
        pos2 = next((n['data']['position'] for n in data if n['name'] == node2), None)
        if pos2 is None:
            # TODO: Ignore the pose in next if not found
            print_warn("Node with name '{node2}' not found in data.")
            raise ValueError(f"Node with name '{node2}' not found in data.")

    return ((pos1['x'] - pos2['x'])**2 + (pos1['y'] - pos2['y'])**2)**0.5