FROM gcr.io/kubeflow-images-public/tensorflow-2.1.0-notebook-cpu:1.0.0

USER root

RUN pip3 install tensorflow-datasets==2.1.0 \
                 google-cloud-storage==1.25.0 \
                 kubeflow-metadata==0.3.1 \
                 pandas==1.0.3 \
                 scikit-learn==0.24.2 \
                 gcsfs==2021.11.1 \
                 protobuf==3.19.1 

RUN pip3 uninstall -y enum34
                 
ENV NB_PREFIX /
