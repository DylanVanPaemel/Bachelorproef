import pandas as pd
from keras.models import load_model

model = load_model("../data/trained_model.h5")

#predict
#logs python -m tensorboard.main --logdir=PythonFiles/

X = pd.read_csv("../data/new_prediction.csv").values

prediction = model.predict(X)

prediction = prediction[0][0]

prediction = prediction + 0
prediction = prediction /1

print(prediction)