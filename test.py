# This file is used to verify your http server acts as expected
# Run it with `python3 test.py``

import requests

model_inputs = {'animation_prompt': '0: A jellyfish in the ocean, studio ghibli|20:A shark in the ocean, studio ghibli', 'max_frames': 60}

res = requests.post('http://localhost:8000/', json = model_inputs)

print(res.json())