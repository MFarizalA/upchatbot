cd app/

echo Start to train rasa
rasa train
echo Start rasa server with nlu model
rasa run --enable-api --cors "*" --debug -p $PORT