install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

tests:
	python -m pytest -vvv --cov=hello --cov=greeting \
	--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb # tests on jupyter notebook
	#python -m pytest -v tests/test_web.py # if you wan tto test web

debug: 
	python -m pytest -vv -pdb # debugger is invoked

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4