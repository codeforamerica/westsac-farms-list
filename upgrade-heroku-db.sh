heroku run 'python manage.py db init;python manage.py db migrate;STR=$(printf "import geoalchemy2\n\n");echo "$STR" > tmp.txt;FILE="`ls migrations/versions/*.py`";echo "`cat tmp.txt $FILE`" > `ls migrations/versions/*.py`;rm migrations/versions/*.pyc;sed -i -e "s/op.drop/# op.drop/g" $FILE;python -m compileall migrations/versions/;python manage.py db upgrade'

