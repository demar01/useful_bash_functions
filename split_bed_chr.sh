#!/bin/bash

for chr in `cut -f 1 file.bed | sort | uniq`; do
                grep -w $chr file.bed > split_results/$chr.output.bed

done

$awk '{print $0 >> $1".bed"}' wgEncodeDukeUniqueness24bp.bed
