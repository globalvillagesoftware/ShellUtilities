# The version of python that we want
sv='3.8.3'

# Get the prerequisites for a successful Python complie
sudo apt-get update
sudo apt-get install -y build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev\
                     liblzma-dev lib libgdbm6 python-ctypes\
                     libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
# Make a place to work
mkdir Downloads/python
cd Downloads/python

#Get the Python source
wget https://www.python.org/ftp/python/$sv/Python-$sv.tgz

# Extract the source code from the tar file that was downloaded
sudo tar xzf Python-$sv.tgz

# the next steps are performed from wthin the source code
cd Python-$sv

# Make sure that we have all the needed pieces and define the attributes that
# we want for Python. This compile will build a development version of Python.
./configure

# Try building Python
make

# Now make sure that everything built. If not, we will need to find out what
# the missing prerequisites are and install them.