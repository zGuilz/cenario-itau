import pytest
from app import Teste

def test_answer():
    classe = Teste()
    assert classe.teste() == "TESTADO PIPELINE!"
