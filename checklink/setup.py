from setuptools import setup

setup(
    name='checklink',
    version='0.1',
    py_modules=['checklink'],
    install_requires=[
        'fastapi[all]==0.103.2',
        'SQLAlchemy==2.0.21',
        'alembic==1.12.0'
    ],
)