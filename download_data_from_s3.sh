#!/bin/bash

# Define an array of directory names
dirs=(
    "cebriamendoza2021"
    "thijssen2023"
    "mengyi2023"
    "thompson2023"
    "oconnell2023"
    "aydillo2022"
)
for dir in "${dirs[@]}"; do
    input_dir="${dir}/input"
    results_dir="${dir}/results"

    mkdir -p "${input_dir}"
    mkdir -p "${results_dir}"

    aws s3 sync "s3://nao-harmon/${dir}/output/input/" "${input_dir}/"
    aws s3 sync "s3://nao-harmon/${dir}/output/results/" "${results_dir}/"
done
