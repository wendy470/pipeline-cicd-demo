import sys
sys.path.insert(0, 'src')
from app import add, hello

def test_add():
    assert add(2, 3) == 5

def test_hello():
    assert hello() == "Hello from pipeline"
