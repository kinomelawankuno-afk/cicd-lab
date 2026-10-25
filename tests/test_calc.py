import pytest

from app.calc import add, divide, percent


def test_add():
    assert add(2, 3) == 5


def test_divide():
    assert divide(10, 2) == 5


def test_divide_by_zero_raises_value_error():
    with pytest.raises(ValueError):
        divide(1, 0)


def test_percent():
    assert percent(1, 4) == 25.0
