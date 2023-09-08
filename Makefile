# Use pyenv

ansible: pip pyyaml
	pip install \
		ansible-core==2.12.\* \
		ansible-lint==6.5.2 \
		molecule==3.5.2 \
		molecule-openstack==0.3 \
		openstacksdk==0.57 \
		yamllint \
		flake8 \
		hvac \
		pytest \
		pytest-testinfra \
		etcd3 \
		protobuf==3.20.0

appdepend: pip
	pip install \
		pyyaml \
		jmespath \
		dnspython \
		netaddr

pyyaml: pip
	pip install --no-build-isolation \
		pyyaml==5.4.1

pip:
	python3 -m pip install -U pip

wheel: pip
	pip install -U setuptools wheel

all: pip pyyaml wheel ansible appdepend

clean:
	pip freeze | xargs pip uninstall -y
