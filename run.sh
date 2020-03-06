pip3 install -r requirements.txt

rm -f /app/pytest.ini
rm -rf /app/tests

cp pytest.ini /app/pytest.ini
cp -a tests/ /app/tests

cd /app
pytest --tb=line 1>&2
