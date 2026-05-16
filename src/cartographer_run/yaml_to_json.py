import yaml
import json
import sys

def main():
    if len(sys.argv) != 3:
        print("Usage: python yaml_to_json.py input.yaml output.json")
        sys.exit(1)

    yaml_file = sys.argv[1]
    json_file = sys.argv[2]

    with open(yaml_file, 'r') as f:
        docs = list(yaml.safe_load_all(f))

    # Nếu chỉ có 1 document thì trả về object, nhiều document thì trả về list
    data = docs[0] if len(docs) == 1 else docs

    with open(json_file, 'w') as f:
        json.dump(data, f, indent=2)

if __name__ == "__main__":
    main()