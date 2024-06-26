init:
	python -m pip install -r requirements.txt

flake8:
	python -m flake8 src/auto_switch_providers

publish:
	python -m pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel
	twine upload dist/*
	rm -fr build dist .egg requests.egg-info
