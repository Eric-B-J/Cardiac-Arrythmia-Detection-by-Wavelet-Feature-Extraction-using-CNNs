# Cardiac-Arrythmia-Detection-by-Wavelet-Feature-Extraction-using-CNNs

Overview
This project presents a deep learning-based approach to detect cardiac arrhythmias from ECG signals. The method involves extracting features using wavelet transformations, which are then fed into a Convolutional Neural Network (CNN) for classification. This system automates the identification of arrhythmias, which can be pivotal in early diagnosis and treatment.

How It Works

Wavelet Transform for Feature Extraction:
ECG signals are complex and may exhibit frequency-domain characteristics that vary with arrhythmias. We use Continous wavelet transform to extract these frequency and time-based features using morlet wavelet. 

CNN for Classification:
The extracted features are used as input to a Convolutional Neural Network (CNN), which learns to distinguish between 3 classes, namely, Arrythmia, Normal Sinus rhythm and Congestive Heart failure. I have use Transfer Learning by using pre-trained model called AlexNet for classification

Data Flow:

Raw ECG signals → Preprocessing (filtering, noise reduction) → Wavelet Feature Extraction → CNN Model → Arrhythmia Classification
