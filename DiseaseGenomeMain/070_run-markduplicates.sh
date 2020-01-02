#!/bin/bash
set -euo pipefail
pcd=picard
id=DRR006760
bami=${id}.sort.bam
bamo=${id}.sort.dedup.bam
metr=${id}.sort.dedup.bam.metrix.txt

picard MarkDuplicates \
       INPUT=${bami} \
       OUTPUT=${bamo} \
       METRICS_FILE=${metr} \
       VALIDATION_STRINGENCY=LENIENT \
       REMOVE_DUPLICATES=true
