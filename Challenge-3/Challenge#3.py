def nested(input_dict, key):
    dict_value = input_dict
    for k in key:
        dict_value = dict_value.get(k, None)
        if dict_value is None:
            return None
    return dict_value
print(nested({"a":{"b":{"c":"d"}}}, ["a","b","c"]))
print(nested({"x":{"y":{"z":"a"}}}, ["x","y","z"]))