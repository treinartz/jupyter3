#!/bin/bash

# Start Xvfb
Xvfb :99 -screen 0 1280x1024x16 &

# Set display environment variable
export DISPLAY=:99

# Start Jupyter Notebook
start-notebook.sh "$@"

#!/bin/bash

# Start virtual framebuffer
Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &

# Start Jupyter Notebook
jupyter notebook --ip 0.0.0.0

