from setuptools import setup, find_packages

setup(
    name='apiverve_exchangerate',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Exchange Rate looks up the conversion rate between two currency codes. It returns the current forex rate and last-updated timestamp across 170+ supported currencies, in USD or any other base; paid plans add the inverse rate.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/exchangerate?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
