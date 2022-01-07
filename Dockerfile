#syntax=docker/dockerfile:1

ARG BASE_IMAGE=python:3.6-buster
FROM $BASE_IMAGE

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
