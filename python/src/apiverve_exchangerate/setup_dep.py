from setuptools import setup, find_packages

setup(
    name='apiverve_exchangerate',
    version='1.2.5',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Exchange Rate looks up the conversion rate between two currency codes across 170+ currencies, with both currency names and the last-updated time. Paid plans add the inverse rate, the pair's 1-day to 1-year change, its 30-day high, low, average and volatility, past dates, and hourly and 30-day daily history.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/exchangerate?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
