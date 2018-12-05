import pandas as pd
import keras
from keras.models import Sequential
from keras.layers import *

training_data_df = pd.read_csv("../data/preprocess_training_data.csv")
X = training_data_df.drop(['id', 'preferred_app', 'age'], axis=1).values
Y = training_data_df[['preferred_app']].values
RUN_NAME = "Training"

# Create a TensorBoard logger
logger = keras.callbacks.TensorBoard(
    log_dir='logs/{}'.format(RUN_NAME),
    histogram_freq=5,
    write_graph=True
)

# Define the model
model = Sequential()

# layers
model.add(Dense(50, input_dim=11, activation='relu'))
model.add(Dense(70, activation='relu'))
model.add(Dense(45, activation='relu'))
model.add(Dense(20, activation='relu'))
model.add(Dense(1, activation='linear'))

# loss function
model.compile(loss="mean_squared_error", optimizer="adam")

# Train the model
model.fit(
    X,
    Y,
    epochs=75,
    shuffle=True,
    verbose=2,
    callbacks=[logger]
)

# loading test data

test_data_df = pd.read_csv("../data/preprocess_test_data.csv")

X_test = test_data_df.drop(['id', ' preferred_app', 'age'], axis=1).values
Y_test = test_data_df[[' preferred_app']].values

test_error_rate = model.evaluate(X_test, Y_test, verbose=0)
print(test_error_rate)

#saving model to file
model.save("../data/trained_model.h5")
print("Model saved.")
