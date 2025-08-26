FROM michelducartier24/multimeditron-cscs-apertus

# remove the pycocotools constraint
RUN sudo sed -i '/^pycocotools/d' /etc/pip/constraints.txt

# don't forget to checkout to multimeditron-apertus
COPY MultiMeditron /workspace/MultiMeditron
WORKDIR /workspace/MultiMeditron
RUN pip install .
