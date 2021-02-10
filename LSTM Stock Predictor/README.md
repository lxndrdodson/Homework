# LSTM Stock Predictor

![deep-learning.jpg](Images/deep-learning.jpg)

Due to the volatility of cryptocurrency speculation, investors will often try to incorporate sentiment from social media and news articles to help guide their trading strategies. One such indicator is the [Crypto Fear and Greed Index (FNG)](https://alternative.me/crypto/fear-and-greed-index/) which attempts to use a variety of data sources to produce a daily FNG value for cryptocurrency. 

1. [Prepare the data for training and testing](#prepare-the-data-for-training-and-testing)
2. [Build and train custom LSTM RNNs](#build-and-train-custom-lstm-rnns)
3. [Evaluate the performance of each model](#evaluate-the-performance-of-each-model)

Here, we've built and evaluated two deep learning recurrent neural networks (RNNs) to model closing prices for Bitcoin. One model uses fear and greed indicators to predict the closing price, the second model uses a window of closing prices to predict the nth closing price. The goal: evaluating FNG to see if it provides a better signal for cryptocurrencies than closing price data.

- - -

### Files

[Closing Prices Starter Notebook](Starter_Code/lstm_stock_predictor_closing.ipynb)

[FNG Starter Notebook](Starter_Code/lstm_stock_predictor_fng.ipynb)

- - -

## Instructions

### Prepare the data for training and testing

Evaluating the Fear and Greed model, I used FNG values to predict closing prices.

Evaluating the closing price model, I used previous closing prices to predict future closing prices. 

Each of these models uses 70% of the data for training and 30% of the data for testing.

The MinMax scaler was applied to the X and y values to scale the data model.

The X_train and X_test values to fit the model were reshaped to fit the model's requirement of features, time steps, and samples. 

### Build and train custom LSTM RNNs

The same custom LSTM RNN architecture is used in each notebook, the FNG notebook contains corresponding data used to train the model. The second notebook uses closing prices data to train the model. 

epochs = 50
batch = 10
number_units = 30
dropout_fraction = 0.2


### Evaluate the performance of each model

The closing price predictor model pulls a lower loss than the FNG predictor model. A loss function is a measure of how well a model performs predictions, the closing price model is better at tracking actual values over time. 

A window size of 1 day works best for the closing prices model. 

- - -

### Resources

[Keras Sequential Model Guide](https://keras.io/getting-started/sequential-model-guide/)

[Illustrated Guide to LSTMs](https://towardsdatascience.com/illustrated-guide-to-lstms-and-gru-s-a-step-by-step-explanation-44e9eb85bf21)

[Stanford's RNN Cheatsheet](https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-recurrent-neural-networks)


- - -

© 2019 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
